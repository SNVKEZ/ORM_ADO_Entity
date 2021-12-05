using System;
using System.Linq;
using System.Data.Entity;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Default : System.Web.UI.Page
    {
        Model1Container dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new Model1Container();
            ListView1.InsertItemPosition=InsertItemPosition.LastItem;
        }

        // Отобразить всех покупателей
        public IQueryable<Peoples> GetPeoples()
        {
            // Используем LINQ-запрос для извлечения данных
            return dbContext.PeoplesSet.AsQueryable<Peoples>();
        }
       
       
        // Редактировать данные покупателя
        public void EditPeople(int? personID)
        {
            Peoples person = dbContext.PeoplesSet
                .Where(c => c.IdPerson == personID).FirstOrDefault();

            if (person != null && TryUpdateModel<Peoples>(person))
            {
                // Обновить данные в БД с помощью Entity Framework
                dbContext.Entry<Peoples>(person).State = EntityState.Modified;
                dbContext.SaveChanges();
            }
        }

        // Удалить покупателя
        public void DeletePeople()
        {
            Peoples person = new Peoples();

            if (TryUpdateModel<Peoples>(person))
            {
                dbContext.Entry<Peoples>(person).State = EntityState.Deleted;
                dbContext.SaveChanges();
            }
        }

        // Вставить нового покупателя
        public void InsertPeople()
        {
            Peoples person = new Peoples();

            if (TryUpdateModel<Peoples>(person))
            {
                dbContext.Entry<Peoples>(person).State = EntityState.Added;
                dbContext.SaveChanges();
            }
        }
    }
}
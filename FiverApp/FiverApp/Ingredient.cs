//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FiverApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ingredient
    {
        public Ingredient()
        {
            this.Recipes = new HashSet<Recipe>();
            this.Recipes1 = new HashSet<Recipe>();
            this.Recipes2 = new HashSet<Recipe>();
            this.Recipes3 = new HashSet<Recipe>();
            this.Recipes4 = new HashSet<Recipe>();
            this.Recipes5 = new HashSet<Recipe>();
            this.Recipes6 = new HashSet<Recipe>();
            this.Recipes7 = new HashSet<Recipe>();
            this.Recipes8 = new HashSet<Recipe>();
            this.Recipes9 = new HashSet<Recipe>();
        }
    
        public int IngredientId { get; set; }
        public string IngredientName { get; set; }
        public string IngredientType { get; set; }
    
        public virtual ICollection<Recipe> Recipes { get; set; }
        public virtual ICollection<Recipe> Recipes1 { get; set; }
        public virtual ICollection<Recipe> Recipes2 { get; set; }
        public virtual ICollection<Recipe> Recipes3 { get; set; }
        public virtual ICollection<Recipe> Recipes4 { get; set; }
        public virtual ICollection<Recipe> Recipes5 { get; set; }
        public virtual ICollection<Recipe> Recipes6 { get; set; }
        public virtual ICollection<Recipe> Recipes7 { get; set; }
        public virtual ICollection<Recipe> Recipes8 { get; set; }
        public virtual ICollection<Recipe> Recipes9 { get; set; }
    }
}

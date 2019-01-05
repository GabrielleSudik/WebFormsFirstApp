using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fee2
{
    public class StateFee
    {
        //this is a library you created within the project:
        //from Solution (in solution explorer):
        //add -- new project -- visual C# --
        //windows -- class library
        //You get a choice to make it part of this solution.

        //properties:
        public string Name
        {
            get;
            private set;
        }
        public string TwoLetterCode
        {
            get;
            private set;
        }
        public decimal Fee
        {
            get;
            private set;
        }

        //constructor
        public StateFee(string name, string twoLetterCode, decimal fee)
        {
            Name = name;
            TwoLetterCode = twoLetterCode;
            Fee = fee;
        }


    }
}

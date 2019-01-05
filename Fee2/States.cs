using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//class created for the Web Forms walkthrough, lesson 5.

namespace Fee2
{
    public class States
    {
        public List<StateFee> ServiceAreaStateFees = new List<StateFee>();
        public decimal OutOfAreaFee { get; private set; }

        //constructor
        //sets prices for some states, and outofarea price for all others
        public States()
        {
            ServiceAreaStateFees.Add(new StateFee("District of Columbia", "DC", 6.99m));
            ServiceAreaStateFees.Add(new StateFee("Ohio", "OH", 5.99m));
            ServiceAreaStateFees.Add(new StateFee("North Carolina", "NC", 6.99m));
            ServiceAreaStateFees.Add(new StateFee("Colorado", "CO", 2.99m));
            ServiceAreaStateFees.Add(new StateFee("California", "CA", 9.99m));
            ServiceAreaStateFees.Add(new StateFee("Oregon", "OR", 9.99m));

            OutOfAreaFee = 49.99m;
        }

        //method
        //finds the fee for each state by two letter code, using LINQ
        public decimal GetFeeForState(string twoLetterCode)
        {
            var state = ServiceAreaStateFees.FirstOrDefault
                (f => f.TwoLetterCode.Equals(twoLetterCode.ToUpper()));
            //if the state matches one on the list, return the state's fee
            //if not, return out of area fee
            return state != null ? state.Fee : OutOfAreaFee;
        }

    }
}


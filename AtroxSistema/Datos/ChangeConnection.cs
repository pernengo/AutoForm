﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public static class ChangeConnection
    {
        public static string StringConexion;

        public static void Chage()
        {
            Properties.Settings.Default["BDAtroxConnectionString"] = StringConexion;
        }
    }
}

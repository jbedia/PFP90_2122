## reproducibility_script.R
## It will reproduce the steps to generate the dataset 'dado.csv'

##     This program is free software: you can redistribute it and/or modify
##     it under the terms of the GNU General Public License as published by
##     the Free Software Foundation, either version 3 of the License, or
##     (at your option) any later version.
## 
##     This program is distributed in the hope that it will be useful,
##     but WITHOUT ANY WARRANTY; without even the implied warranty of
##     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
##     GNU General Public License for more details.
## 
##     You should have received a copy of the GNU General Public License
##     along with this program. If not, see <http://www.gnu.org/licenses/>.


## set random seed (for reproducibility)
set.seed(1)
## simulate random values from 1 to 6, 10 times
dado <- sample(x = 1:6, size = 10, replace = TRUE)
## Create table
tabla <- cbind.data.frame("lanzamiento" = 1:10,
                 "resultado" = dado)
## write file in temp dir
write.table(x = tabla, file = "/tmp/dado.csv",
            sep = ";",
            quote = FALSE,
            row.names = FALSE)

## End

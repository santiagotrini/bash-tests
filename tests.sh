#!/bin/bash

# colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# contador
tests_passed=0

# funciones
test_output() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 => $2 ${GREEN}✓${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: Esperaba '$expected' pero se obtuvo '$output' ${RED}✗${NC}"
  fi
}
test_output_ml() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 ${GREEN}✓${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: $1 ${RED}✗${NC}"
  fi
}
# saludo
test_output "./saludo Juan" "Hola, Juan"
test_output "./saludo Maria" "Hola, Maria"
test_output "./saludo Pedro" "Hola, Pedro"
test_output "./saludo Mario" "Hola, Mario"
test_output "./saludo Juana" "Hola, Juana"
# factorial
test_output "./factorial 0" "1"
test_output "./factorial 4" "24"
test_output "./factorial -1" "Error"
test_output "./factorial 7" "5040"
test_output "./factorial 9" "362880"
# hola
test_output "spim -q -f hola.s Juan" "Hola, Juan"
test_output "spim -q -f hola.s Maria" "Hola, Maria"
test_output "spim -q -f hola.s Diego" "Hola, Diego"
test_output "spim -q -f hola.s Florencia" "Hola, Florencia"
test_output "spim -q -f hola.s Javier" "Hola, Javier"


# resultado final
echo "--------------  Resultado  --------------"
if [[ $tests_passed -eq 15 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/15 tests OK."
fi
exit 0

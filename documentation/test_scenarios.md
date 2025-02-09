# Scenariusze Testowe - opis działania

## Nawigacja

Po otwarciu aplikacji znajdujemy się w menu głównym.

W menu oraz na każdej z podstron znajduje się panel do nawigacji:

- naciśnięcie wybranego guzika przenosi do odpowiedniej podstrony

- naciśnięcie guzika aktualnej strony pozwala ją odświeżyć

## Podstrona Route Catalogue

Wydzielone 3 sekcje:

**W lewej** znajdują się istniejące trasy wraz z ich cechami (id, nazwa, długość w km, czas w minutach).
Oprócz tego jest informacja, czy droga nadaje się do użytku - podświetla się na zielono jeżeli droga
jest sprawna lub na pomarańczowo jeżeli wymaga naprawy.

Po naciśnięciu w wybraną trasę, podświetla się ona na czerwono, a w dolnej sekcji wyświetlają się dodatkowe informacje.
Jednocześnie można wyświetlić informacje o jednej drodze na raz. Po wybraniu na innej trasy zawartość dolnej sekcji
odpowiednio się aktualizuje.

**W prawej** jest opcja filtrowania wyświetlanych tras. Początkowo żaden filtr nie jest ustawiony i wyświetlone
są wszystkie drogi.

Możemy ustawić następujące filtry:

+ minimalna i maksymalna długość trasy - aplikacja pozwala wprowadzić liczby całkowite nieujemne, wprowadzenie ujemnej liczby skutkuje komunikatem o błędzie

+ minimalny i maksymalny czas przejazdu na trasie - jak wyżej

+ czy na trasie znajduje się niesprawny element danego typu - zrealizowane za pomocą chceckbox-ów i możemy wybrać nastęujące
elementy: semaphore, pressurization port, exit, pylon, tubing

W przydaku wyboru wielu typów elementów wystarczy, że na trasie będzie niesprawny chociaż jeden z nich, by się ona wyświetliła.

Wybrane filtry wprowadzamy naciskając przycisk Apply Filters, w wyniku czego lista wyświetlanych tras zostaje zaktualizowana.
Przycisk Clear Filters usuwa wybrane filtry i wszystkie trasy zostają wyświetlone. Również dane w formularzu są czyszczone.

**W dolnej** zostają wyświetlone dodatkowe informacje po wybraniu konkretnej trasy, są to:
jej nazwa, stacje w kolejności przez które ona przebiega (numer w kolejnośći, id oraz nazwa) oraz kapsuły, które są przypisane do danej drogi (id oraz nazwa).
W przypadku braku przypisanych kapsuł to pole jest puste.

## Podstrona Management

Wydzielone 4 sekcje:

**W lewej** jest lista wszystkich odcinków z jednej stacji do drugiej (opisane numerem ID oraz miastem początkowym i końcowym).
Listę można przewijać scrollem. Po najechaniu myszką na odcinek z listy zostanie on podświetlony, a po naciśnięciu w dolnej sekcji
wyświetlą się o nim informacje.

**W środkowej** jest możliwość dodania nowej drogi.

W pole nazwa musimy wprowadzić nazwę dodawanej trasy. Nazwa trasy jest obowiązkowa - pilnowane zarówno przez bazę danych (NOT NULL) oraz przez aplikację.

Maksymalna długość to 20 znaków - narzucone przez bazę danych, pilnowane przez aplikację.

Musimy też wybrać odcinki, z których droga ma się składać - przynajmniej jeden. W tym celu naciskamy podwójnie na wybrany odcinek.
Zostaje on przeniesiony do sekcji dodawania. Następne odcinki muszą mieć stację początkową zgodną ze stacją końcową poprzedniego.

Integralność danych jest wymuszana przez aplikację - wszystkie odcinki które nie spełniają tego warunku zostaną wszarzone i wciśnięcie ich
nie dodaje ich do tworzonej trasy.

Jeżeli nazwaliśmy drogę oraz wybraliśmy minimum jeden odcinek to przycisk
ADD ROUTE utworzy trasę - numer ID przydzielany automatycznie przez bazę danych (AUTO INCREMENT) - inaczej pojawi się komunikat o błędzie.

Po dodaniu trasy panel zostaje wyczyszczony. Panel możemy też wyczyścić wciskając na przycisk CLEAR.

Obecnie utworzone trasy można zobaczyć na podstronie Route Catalogue.

**W prawej** można wykonać następujące operacje:

- usuwanie tras - wpisujemy ID wybranej trasy i po naciśnięciu przycisku DELETE ROUTE zostaje ona usunięta.
Aplikacja pozwala wprowadzić liczby całkowite. Jeżeli podamy nieistniejące ID to otrzymamy stosowny komunikat, że nie ma takiej trasy.

- przypisywanie kapsuł do tras - dostępna jest lista kapsuł (ID, nazwa oraz typ). Listę możemy przewijać. Pod listą możemy
wpisać ID kapsuły oraz ID trasy. Aplikacja pilnuje, aby były to liczby całkowite.

Po podaniu obu ID możemy nacisnąć Przycisk ASSIGN CAPSULE, aby przypisać kapsułę do trasy.

Jeżeli oba ID rzeczywiście istnieją w bazie danych to kaspuła zostanie przypisana,
w przeciwnym przypadku pojawi się komunikat o błędzie - w bazie danych muszą zgadzać się klucze obce.

Jeżeli dana kapsuła już jest przypisana do danej trasy, przypisanie nie ulegnie zmianie.

Jedna kapsuła może być przypisana do wielu tras, a po jednej trasie może jeździć wiele kapsuł.

Przyciskiem UNASSIGN CAPSULE możemy wyczyścić przypisanie kapusły do trasy - w przypadku podania powiązanej pary ID przypisanie
zostanie anulowane, w przeciwnym razie tabela przypisań nie ulegnie zmianie.

- aktualizowanie stanu infrastruktury - wymagane jest wpisanie ID elementu oraz stanu w jakim ma się on znaleźć - pojedynczy znak.

Akceptowalne stany to 'F' (Functional) oraz 'O' (Out-Of-Order) - pilnowane przez bazę danych (CHECK CONSTRAINT) oraz przez aplikację.

Aplikacja pozwala również na podanie małych liter 'f' oraz 'o', jednak podanie innego znaku poskutkuje otrzymaniem komunikatu o niepoprawnym stanie.

W przypadku podania operacji zmiany zgodnej z obecnym stanem, nic się zmieni. Zmiana stanu na przeciwny pociąga za sobą uaktualnienie tabeli MALFUNCTIONS

**W dolnej** po naciśnięciu odcinka z listy wyświetlą się o nim szczegółowe informacje: ID, nazwa stacji początkowej i końcowej,
długość oraz maksymalna prędkość.

Wyświetlą się również wszystkie elementy infrastruktury na danym odcinku pogrupowane według typu:
semaphore, pressurization port, exit, pylon, tubing.

Przy elementach jest napisane ich ID, nazwa, oraz informacja o stanie podświetlona na zielono jeżli jest sprawny lub na pomarańczowo jeżeli wymaga naprawy.

Jednocześnie mogą być wyświetlana informacje o jednym połączeniu na raz. W celu zmiany należy
nacisnąć na inny odcinek z listy.

## Podstrona Reports

Wydzielone 2 sekcje:

**W lewej** jest lista tras, na których znajdują się elementy wymagające naprawy.

**W prawej** jest lista raportów dotyczących awarii poszczególnych elementów infrastruktury. Pole raportu zawiera:
ID, ID elementu, ID odcinka, datę wykrycia, datę naprawy (jeżeli została naprawiona).

Raporty generują się oraz uaktualniają automatycznie po wprowadzeniu zmian w stanie elementów na podstronie Management w sekcji Update Infrastructure
State.

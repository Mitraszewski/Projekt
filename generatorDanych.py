import pandas as pd

imiona_damskie = pd.read_excel(r"C:\Users\admin\Desktop\imiona_zenskie.xlsx", header = None, names = ['imie', 'plec', 'ile'])
imiona_damskie['szansa'] = imiona_damskie['ile']/imiona_damskie['ile'].sum()

imiona_meskie = pd.read_excel(r"C:\Users\admin\Desktop\imiona_meskie.xlsx", header = None, names = ['imie', 'plec', 'ile'])
imiona_meskie['szansa'] = imiona_meskie['ile']/imiona_meskie['ile'].sum()

nazwiska_meskie = pd.read_excel(r"C:\Users\admin\Desktop\nazwiska_meskie.xlsx", header = None, names = ['nazwisko', 'ile'])
nazwiska_meskie['szansa'] = nazwiska_meskie['ile']/nazwiska_meskie['ile'].sum()
nazwiska_damskie = pd.read_excel(r"C:\Users\admin\Desktop\zenskie_nazwiska.xlsx", header = None, names = ['nazwisko', 'ile'])
nazwiska_damskie['szansa'] = nazwiska_damskie['ile']/nazwiska_damskie['ile'].sum()


def get_random_name_surname(plec = 0, ile = 5):
    """
    plec :0 -> mezczyzna
    plec :1 -> kobieta
    """
    if plec == 0:
        nazwiska = nazwiska_meskie.sample(n = ile, weights ='szansa')['nazwisko']
        imiona = imiona_meskie.sample(n = ile, weights = 'szansa')['imie']
        return list(zip(imiona, nazwiska))
    elif plec == 1:
        nazwiska = nazwiska_damskie.sample(n = ile, weights = 'szansa')['nazwisko']
        imiona = imiona_damskie.sample(n = ile, weights = 'szansa')['imie']
        return list(zip(imiona, nazwiska))
    else:
        return None

print(get_random_name_surname(plec = 0, ile = 50))



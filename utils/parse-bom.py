#!/usr/bin/python3
import os
import csv

count = {
    'adder': 3,
    'bus': 10,
    'clock': 4,
    'decoder': 8,
    'logic_binary': 3,
    'logic_unary': 3,
    'power': 1,
    'register': 6,
    'rom': 4,
    'switchboard': 10,
    'switches': 10,
}

names = {
    'Capacitor_THT:CP_Radial_D8.0mm_P3.50mm': 'конденсатор',
    'Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal': 'диод',
    'Connector_IDC:IDC-Header_2x04_P2.54mm_Vertical': 'разъём IDC 8pin',
    'relay:MY4N socket': 'колодка и реле',
    'relay:MTS-102': 'тумблер',
    'LED_THT:LED_D3.0mm': 'светодиод',
    'Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal': 'резистор',
    'Button_Switch_SMD:SW_Push_1P1T_NO_E-Switch_TL3301NxxxxxG': 'кнопка',
    'Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm': 'DIP-переключатели',
    'Fuse:Fuseholder_Clip-5x20mm_Littelfuse_445-030_Inline_P20.50x5.20mm_D1.30mm_Horizontal': 'держатель предохранителя и предохранитель',
    'Connector_BarrelJack:BarrelJack_GCT_DCJ200-10-A_Horizontal': 'разъём для блока питания',
    'Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Horizontal': 'угловой разъём 8pin (F)',
    'Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal': 'угловой разъём 8pin (M)',
    'pin': 'вертикальный пин',
}

pins = {
    'Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical': 3,
    'Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical': 10,
    'Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical': 4,
    'Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical': 8,
}

path = '../modules-bom/'
bom = {'pin': 0}
for name in os.listdir(path):
    fullname = os.path.join(path, name)
    if not os.path.isfile(fullname):
        continue
    with open(fullname, 'r') as f:
        reader = csv.reader(f, delimiter=',', quotechar='"')
        fields = reader.__next__()
        fp_idx = fields.index('Footprint')
        qty_idx = fields.index('Qty')
        for row in reader:
            fp = row[fp_idx]
            qty = int(row[qty_idx])
            if fp not in bom:
                bom[fp] = 0
            bom[fp] += qty * count[name]

for name, qty in bom.items():
    if name in pins:
        bom['pin'] += pins[name] * qty
    elif name in names:
        pass
    else:
        print('Error:', name, qty)

for name, qty in bom.items():
    if name in names:
        name = names[name]
        print(name, qty)

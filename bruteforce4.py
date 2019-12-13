import hashlib

for i in range(1000000):
    pin = str(i)
    while len(pin) != 6:
        pin  = '0' + pin

    sha = hashlib.sha256(pin.encode()).hexdigest()
    if sha == '646d57dc2f2977e68b76b58122660853bf3a2251aa386a9080a1ed209b1d1be2':
        print('ashton:' + pin)

    if sha == 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a':
        print('arianna:' + pin)    

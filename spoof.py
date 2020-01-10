import frida, sys

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

jscode = """
function arrToStr(byteArr) {
var tmp = "";

}

Java.perform(function () {
    var Client = Java.use('com.badguy.terrortime.Client');
    Client.decryptMessage.overload('com.badguy.terrortime.Message').implementation = function (b) {
        var bytes = b.getContent();
        console.log('[start]')
        console.log('Client: ' + b.getClientId());
        console.log('Contact: ' + b.getContactId());
        console.log('From Client: ' + b.isFromClient())
        var message = "";
        for (var k = 0; k < bytes.length; k++) {
            message += String.fromCharCode(bytes[k]);
        }
        console.log(message);
        console.log('[end]')
        return false;
    };
});
"""

process = frida.get_usb_device().attach('com.badguy.terrortime')
script = process.create_script(jscode)
script.on('message', on_message)
script.load()
sys.stdin.read()
 #!/bin/bash
  
for e in `seq 1 10`;
 do
 e=2
  for i in `seq 1 40 360`;
        do
          echo  curl -s --request POST '"https://eu-wap.tplinkcloud.com?token=YOUR TOKEN HTTP/1.1"' --data 'SIGN{"method":"passthrough", "params": {"deviceId": "Your Device ID","requestData":"{\"smartlife.iot.smartbulb.lightingservice\":{\"transition_light_state\":{\"on_off\":1,\"brightness\":100,\"hue\":COLE,\"saturation\":100} } } " } }SIGN' --header '"Content-Type: application/json"'  | sed "s/COLE/$i/g" | sed "s/SIGN/\'/g" > ./myscript
sh myscript

        echo ""
        sleep 0.1
  done
done

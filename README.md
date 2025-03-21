# aws-kvs-webrtc-ios-receiver
A modified version of amazon-kinesis-video-streams-webrtc-sdk-ios that supports receiving only video and audio streams. AWS authentication is switched from Cognito to AWS Static Credentials.  

Tip: Before running the app, replace the AWSAccessKey and AWSSecretKey, and enter your channel name and region.

<p align="center">
  <img src="https://github.com/user-attachments/assets/f00eb1cc-e50f-4e54-b508-8ca13478d7a9" width="300" style="border: 2px solid blue;" />
  <img src="https://github.com/user-attachments/assets/6ccb3b4b-85b1-470d-b944-95f83b0db15f" width="300" style="border: 2px solid blue;" />
</p>

## Requirements

* Xcode 10 and later
* iOS 11 and later

#### Using XCode to build the project

1. The AWS Mobile SDK for iOS is available through [CocoaPods](http://cocoapods.org). If you have not installed CocoaPods, install CocoaPods: (Requires Ruby installed) 

        sudo gem install cocoapods
        pod setup

2. To install the AWS Mobile SDK for iOS run the following command in the directory containing this sample:

        pod install

3. Open `AWSKVSWebRTCReceiver.xcworkspace` (File location: aws-kvs-webrtc-ios-receiver/AWSKVSWebRTCReceiver/AWSKVSWebRTCReceiver.xcworkspace).

4. Add your AK/SK info and enter your channel name and region into [ChannelConfigurationViewController.swift](https://github.com/Json031/aws-kvs-webrtc-ios-receiver/blob/main/AWSKVSWebRTCReceiver/KVSiOSApp/ChannelConfigurationViewController.swift#L8):

```swift
    let AWSAccessKey: String = "REPLACE_ME"
    let AWSSecretKey: String = "REPLACE_ME"
    let DefaultChannel: String = "Test_Channel"
    let DefaultRegionName: String = "cn-north-1"
```


##### Note

* _This sample application has been tested in iPhone 11 and iPhone XS MAX._

## License
This library is licensed under the [Apache 2.0 License](https://github.com/awslabs/amazon-kinesis-video-streams-webrtc-sdk-ios/blob/master/LICENSE).

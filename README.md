# aws-kvs-webrtc-ios-receiver
A modified version of amazon-kinesis-video-streams-webrtc-sdk-ios that expanded support for usage scenarios that only receive video and audio streams. AWS authentication is switched from Cognito to AWS Static Credentials.  
<br>亚马逊KVS WebRTC视频流的修改版本，拓展支持了仅接收视频流和音频流的使用场景。AWS身份验证已从Cognito切换到AWS静态凭据。

#### Tip 1: Before running the app, replace the AWSAccessKey and AWSSecretKey, and enter your channel name and region.<br>在运行应用程序之前，请替换AWSAccessKey和AWSSecretKey，并输入您的频道名称和地区。
#### Tip 2: When the popup requests microphone permission, please select 'Don't Allow' directly. This microphone popup might be a bug in the official WebRTC implementation because it will popup even if set isAudioOn to false.<br>当弹出窗口请求麦克风权限时，请直接选择“Don't Allow”。这个麦克风弹出窗口可能是官方WebRTC实现中的一个错误，因为即使将isAudioOn设置为false，它也会弹出。

<p align="center">
  <img src="https://github.com/user-attachments/assets/f00eb1cc-e50f-4e54-b508-8ca13478d7a9" width="300" style="border: 2px solid blue;" />
  <img src="https://github.com/user-attachments/assets/6ccb3b4b-85b1-470d-b944-95f83b0db15f" width="300" style="border: 2px solid blue;" />
</p>

## Requirements<br>环境条件

* Xcode 10 and later
* iOS 11 and later

#### Using XCode to build the project<br>使用XCode构建项目

1. The AWSKinesisVideo SDK for iOS is available through [CocoaPods](http://cocoapods.org). If you have not installed CocoaPods, install CocoaPods: (Requires Ruby installed) 

        sudo gem install cocoapods
        pod setup

2. To install the AWSKinesisVideo SDK for iOS run the following command in the directory containing this sample要安装AWSKinesisVideo SDK for iOS，请在包含此示例的目录中运行以下命令:

        pod install

3. Open `AWSKVSWebRTCReceiver.xcworkspace` (File location: aws-kvs-webrtc-ios-receiver/AWSKVSWebRTCReceiver/AWSKVSWebRTCReceiver.xcworkspace).

4. Add your AK/SK info and enter your channel name and region into [ChannelConfigurationViewController.swift](https://github.com/Json031/aws-kvs-webrtc-ios-receiver/blob/main/AWSKVSWebRTCReceiver/KVSiOSApp/ChannelConfigurationViewController.swift#L8)<br>添加您的AK/SK信息，并在中输入您的频道名称和地区:

```swift
    let AWSAccessKey: String = "REPLACE_ME"
    let AWSSecretKey: String = "REPLACE_ME"
    let DefaultChannel: String = "Test_Channel"
    let DefaultRegionName: String = "cn-north-1"
```


##### Note提示

* _This sample application has been tested in iPhone 11 and iPhone XS MAX.<br>此示例应用程序已在iPhone 11和iPhone XS MAX上进行了测试._

## License许可证
This library is licensed under the [Apache 2.0 License](https://github.com/awslabs/amazon-kinesis-video-streams-webrtc-sdk-ios/blob/master/LICENSE).

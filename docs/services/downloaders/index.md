# **Downloaders**

Riven supports various downloaders to help you manage and download your media content. Below is a list of the supported downloaders, their configuration options, and examples of what to enter for each field.

### **Available Downloaders**

- [Real Debrid](#real-debrid)
- [All Debrid](#all-debrid)
- [Torbox](#torbox)

!!! note "Lists support multiple values"
    Some settings have lists that support multiple values. These are noted in the description of the setting.

    - Example: `["value1", "value2"]`

!!! warning "Atleast one downloader must be enabled"

    Atleast one downloader must be enabled to leverage the downloaders.

---

## **General Settings**

These settings apply to all downloaders.

- **video_extensions** (list of strings): A list of video file extensions to download.
    - Example: `["mp4", "mkv", "avi"]`
- **prefer_speed_over_quality** (boolean): Boolean value to prefer download speed over video quality.
    - Example: `false`

---

## **Real Debrid**

Real Debrid is a downloader that provides high-speed downloads and streaming.

- **enabled** (boolean): Boolean value to enable or disable the service.
    - Example: `true`
- **api_key** (string): The API key for accessing Real Debrid.
    - Example: `"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"`
- **proxy_enabled** (boolean): Boolean value to enable or disable the use of a proxy.
    - Example: `false`
- **proxy_url** (string): The URL of the proxy server.
    - Example: `"http://localhost:1234"`

---

## **All Debrid**

All Debrid is a downloader that provides high-speed downloads and streaming.

- **enabled** (boolean): Boolean value to enable or disable the service.
    - Example: `false`
- **api_key** (string): The API key for accessing All Debrid.
    - Example: `"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"`
- **proxy_enabled** (boolean): Boolean value to enable or disable the use of a proxy.
    - Example: `false`
- **proxy_url** (string): The URL of the proxy server.
    - Example: `"http://localhost:1234"`

---

## **Torbox**

Torbox is a downloader that provides high-speed downloads and streaming.

- **enabled** (boolean): Boolean value to enable or disable the service.
    - Example: `false`
- **api_key** (string): The API key for accessing Torbox.
    - Example: `"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"`

# **Subtitles Configuration**

Riven supports various subtitle providers to help you manage and download subtitles for your media content. Below is a list of the supported subtitle providers, their configuration options, and examples of what to enter for each field.

### **Available Providers**

- [Subliminal](#subliminal)
- [OpenSubtitles](#opensubtitles)
- [OpenSubtitles.com](#opensubtitlescom)

!!! note "Subliminal"

    Subliminal is a subtitle provider that supports multiple languages and providers. It integrates with various subtitle services to fetch the best subtitles for your media content.

    More information can be found at the [Subliminal GitHub](https://github.com/Diaoul/subliminal).

---

## **Subliminal**

Subliminal is a subtitle provider that supports multiple languages and providers. It integrates with various subtitle services to fetch the best subtitles for your media content.

- **enabled** (boolean): Boolean value to enable or disable the service. Default is false.
    - Example: `false`
- **languages** (list of strings): A list of languages for which subtitles should be downloaded. Default is `["eng"]`.
    - Example: `["eng", "spa", "fre"]`
- **providers** (object): An object containing the configuration for each subtitle provider.

## **Providers Configuration**

These are additional providers that you can add to your configuration.

### **OpenSubtitles**

OpenSubtitles is a popular subtitle provider.

- **enabled** (boolean): Boolean value to enable or disable the provider. Default is false.
    - Example: `false`
- **username** (string): The username for accessing OpenSubtitles. *(Optional)*
    - Example: `"your_username"`
- **password** (string): The password for accessing OpenSubtitles. *(Optional)*
    - Example: `"your_password"`

### **OpenSubtitles.com**

OpenSubtitles.com is another popular subtitle provider.

- **enabled** (boolean): Boolean value to enable or disable the provider. Default is false.
    - Example: `false`
- **username** (string): The username for accessing OpenSubtitles.com. *(Optional)*
    - Example: `"your_username"`
- **password** (string): The password for accessing OpenSubtitles.com. *(Optional)*
    - Example: `"your_password"`

!!! riven "Optional Authentication"

    OpenSubtitles and OpenSubtitles.com don't require additional authentication and can be used once enabled.

!!! note "How Subliminal Works"

    Subliminal is a powerful library that works by searching for subtitles in your media library and downloading them. It uses the configured providers to search for and download subtitles. You can find more information as to how providers work [here](https://subliminal.readthedocs.io/en/latest/user/how_it_works.html).


### **How Subtitles Work**

Riven uses the Subliminal library to handle subtitles. When enabled, Subliminal will scan your media library for video files and download the best available subtitles in the specified languages. Here is a brief overview of how the process works:

1. **Initialization**:
    - Subliminal initializes with the configured providers and their credentials.
    - It sets up a cache to store subtitle data and avoid redundant downloads.

2. **Scanning for Videos**:
    - Subliminal scans the symlink library path for video files.
    - It identifies existing subtitles and their languages.

3. **Downloading Subtitles**:
    - Subliminal fetches the best available subtitles for each video in the specified languages.
    - It uses the configured providers to search for and download subtitles.

4. **Saving Subtitles**:
    - Subliminal saves the downloaded subtitles to the appropriate location.
    - It logs the details of the downloaded subtitles for reference.

5. **Error Handling**:
    - If a provider fails to initialize or authenticate, Subliminal logs a warning and continues with the remaining providers.
    - It ensures that the subtitle download process is robust and handles errors gracefully.

By configuring Subliminal and its providers, you can ensure that your media content always has the best available subtitles in your preferred languages.

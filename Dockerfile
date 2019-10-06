FROM stanov/unity:UNITY_VERSION-no-license

COPY UnityLicense.ulf /Unity

RUN /Unity/Editor/Unity -quit -batchmode -nographics -manualLicenseFile /Unity/UnityLicense.ulf
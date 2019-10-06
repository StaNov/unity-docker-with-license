FROM stanov/unity:UNITY_VERSION-no-license

COPY UnityLicense.ulf /Unity

RUN bash -c "/Unity/Editor/Unity -quit -batchmode -nographics -manualLicenseFile /Unity/UnityLicense.ulf || echo 'Non-zero exit code was returned, but it seems to happen even if the command finishes successfully...'"
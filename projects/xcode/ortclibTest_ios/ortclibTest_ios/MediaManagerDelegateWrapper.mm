#include "MediaManagerDelegateWrapper.h"

MediaManagerDelegateWrapperPtr MediaManagerDelegateWrapper::create()
{
  return MediaManagerDelegateWrapperPtr (new MediaManagerDelegateWrapper());
}

void MediaManagerDelegateWrapper::onMediaManagerSuccessCallback(IMediaStreamPtr stream)
{
  printf("******************* MEDIA MANAGER SUCCESS CALLBACK *******************\n");
}

void MediaManagerDelegateWrapper::onMediaManagerErrorCallback(IMediaManager::UserMediaError error)
{
  printf("******************* MEDIA MANAGER ERROR CALLBACK *******************\n");
}

void MediaManagerDelegateWrapper::onMediaManagerAudioRouteChanged(IMediaManager::OutputAudioRoutes audioRoute)
{
  switch (audioRoute)
  {
    case ortc::IMediaManager::OutputAudioRoute_Headphone:
      printf("Audio route changed -- Headphone\n");
      break;
    case ortc::IMediaManager::OutputAudioRoute_BuiltInReceiver:
      printf("Audio route changed -- Built in speaker\n");
      break;
    case ortc::IMediaManager::OutputAudioRoute_BuiltInSpeaker:
      printf("Audio route changed -- Built in receiver\n");
      break;
    default:
      break;
  }
}

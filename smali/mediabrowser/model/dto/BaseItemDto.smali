.class public Lmediabrowser/model/dto/BaseItemDto;
.super Ljava/lang/Object;
.source "BaseItemDto.java"

# interfaces
.implements Lmediabrowser/model/entities/IHasProviderIds;
.implements Lmediabrowser/model/dto/IHasServerId;


# instance fields
.field private AbsoluteEpisodeNumber:Ljava/lang/Integer;

.field private AirDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private AirTime:Ljava/lang/String;

.field private AirsAfterSeasonNumber:Ljava/lang/Integer;

.field private AirsBeforeEpisodeNumber:Ljava/lang/Integer;

.field private AirsBeforeSeasonNumber:Ljava/lang/Integer;

.field private Album:Ljava/lang/String;

.field private AlbumArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private AlbumCount:Ljava/lang/Integer;

.field private AlbumId:Ljava/lang/String;

.field private AlbumPrimaryImageTag:Ljava/lang/String;

.field private Altitude:Ljava/lang/Double;

.field private AnimeSeriesIndex:Ljava/lang/Integer;

.field private Aperture:Ljava/lang/Double;

.field private ArtistCount:Ljava/lang/Integer;

.field private ArtistItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private AspectRatio:Ljava/lang/String;

.field private Audio:Lmediabrowser/model/livetv/ProgramAudio;

.field private AwardSummary:Ljava/lang/String;

.field private BackdropImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Budget:Ljava/lang/Double;

.field private CameraMake:Ljava/lang/String;

.field private CameraModel:Ljava/lang/String;

.field private CanDelete:Ljava/lang/Boolean;

.field private CanDownload:Ljava/lang/Boolean;

.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/String;

.field private ChannelNumber:Ljava/lang/String;

.field private ChannelPrimaryImageTag:Ljava/lang/String;

.field private ChannelType:Lmediabrowser/model/livetv/ChannelType;

.field private Chapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private ChildCount:Ljava/lang/Integer;

.field private CollectionType:Ljava/lang/String;

.field private CommunityRating:Ljava/lang/Float;

.field private CompletionPercentage:Ljava/lang/Double;

.field private Container:Ljava/lang/String;

.field private CriticRating:Ljava/lang/Float;

.field private CriticRatingSummary:Ljava/lang/String;

.field private CumulativeRunTimeTicks:Ljava/lang/Long;

.field private CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

.field private CustomRating:Ljava/lang/String;

.field private DateCreated:Ljava/util/Date;

.field private DateLastMediaAdded:Ljava/util/Date;

.field private DisplayMediaType:Ljava/lang/String;

.field private DisplayOrder:Ljava/lang/String;

.field private DisplayPreferencesId:Ljava/lang/String;

.field private DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

.field private DvdEpisodeNumber:Ljava/lang/Float;

.field private DvdSeasonNumber:Ljava/lang/Integer;

.field private EnableMediaSourceDisplay:Ljava/lang/Boolean;

.field private EndDate:Ljava/util/Date;

.field private EpisodeCount:Ljava/lang/Integer;

.field private EpisodeTitle:Ljava/lang/String;

.field private Etag:Ljava/lang/String;

.field private ExposureTime:Ljava/lang/Double;

.field private ExternalUrls:[Lmediabrowser/model/providers/ExternalUrl;

.field private ExtraType:Lmediabrowser/model/entities/ExtraType;

.field private FocalLength:Ljava/lang/Double;

.field private ForcedSortName:Ljava/lang/String;

.field private GameCount:Ljava/lang/Integer;

.field private GameSystem:Ljava/lang/String;

.field private GenreItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private HasDynamicCategories:Ljava/lang/Boolean;

.field private HasSubtitles:Ljava/lang/Boolean;

.field private HasSyncJob:Ljava/lang/Boolean;

.field private Height:Ljava/lang/Integer;

.field private HomePageUrl:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageOrientation:Lmediabrowser/model/drawing/ImageOrientation;

.field private ImageTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private IndexNumber:Ljava/lang/Integer;

.field private IndexNumberEnd:Ljava/lang/Integer;

.field private IndexOptions:[Ljava/lang/String;

.field private IsFolder:Ljava/lang/Boolean;

.field private IsHD:Ljava/lang/Boolean;

.field private IsKids:Ljava/lang/Boolean;

.field private IsLive:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNew:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsPlaceHolder:Ljava/lang/Boolean;

.field private IsPremiere:Ljava/lang/Boolean;

.field private IsRepeat:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private IsSynced:Ljava/lang/Boolean;

.field private IsoSpeedRating:Ljava/lang/Integer;

.field private IsoType:Lmediabrowser/model/entities/IsoType;

.field private Keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Latitude:Ljava/lang/Double;

.field private LocalTrailerCount:Ljava/lang/Integer;

.field private LocationType:Lmediabrowser/model/entities/LocationType;

.field private LockData:Ljava/lang/Boolean;

.field private LockedFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MetadataFields;",
            ">;"
        }
    .end annotation
.end field

.field private Longitude:Ljava/lang/Double;

.field private MediaSourceCount:Ljava/lang/Integer;

.field private MediaSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private MediaStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private MediaType:Ljava/lang/String;

.field private Metascore:Ljava/lang/Float;

.field private MovieCount:Ljava/lang/Integer;

.field private MultiPartGameFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MusicVideoCount:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private Number:Ljava/lang/String;

.field private OfficialRating:Ljava/lang/String;

.field private OriginalCollectionType:Ljava/lang/String;

.field private OriginalRunTimeTicks:Ljava/lang/Long;

.field private OriginalTitle:Ljava/lang/String;

.field private Overview:Ljava/lang/String;

.field private ParentArtImageTag:Ljava/lang/String;

.field private ParentArtItemId:Ljava/lang/String;

.field private ParentBackdropImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ParentBackdropItemId:Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private ParentLogoImageTag:Ljava/lang/String;

.field private ParentLogoItemId:Ljava/lang/String;

.field private ParentPrimaryImageItemId:Ljava/lang/String;

.field private ParentPrimaryImageTag:Ljava/lang/String;

.field private ParentThumbImageTag:Ljava/lang/String;

.field private ParentThumbItemId:Ljava/lang/String;

.field private PartCount:Ljava/lang/Integer;

.field private Path:Ljava/lang/String;

.field private People:[Lmediabrowser/model/dto/BaseItemPerson;

.field private PlayAccess:Lmediabrowser/model/library/PlayAccess;

.field private Players:Ljava/lang/Integer;

.field private PlaylistItemId:Ljava/lang/String;

.field private PreferredMetadataCountryCode:Ljava/lang/String;

.field private PreferredMetadataLanguage:Ljava/lang/String;

.field private Prefix:Ljava/lang/String;

.field private PremiereDate:Ljava/util/Date;

.field private PrimaryImageAspectRatio:Ljava/lang/Double;

.field private ProductionLocations:[Ljava/lang/String;

.field private ProductionYear:Ljava/lang/Integer;

.field private ProgramCount:Ljava/lang/Integer;

.field private ProgramId:Ljava/lang/String;

.field private ProviderIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RecordingCount:Ljava/lang/Integer;

.field private RecursiveItemCount:Ljava/lang/Integer;

.field private RemoteTrailers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaUrl;",
            ">;"
        }
    .end annotation
.end field

.field private Revenue:Ljava/lang/Double;

.field private RunTimeTicks:Ljava/lang/Long;

.field private ScreenshotImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SeasonId:Ljava/lang/String;

.field private SeasonName:Ljava/lang/String;

.field private SeasonUserData:Lmediabrowser/model/dto/UserItemDataDto;

.field private SeriesCount:Ljava/lang/Integer;

.field private SeriesGenres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SeriesId:Ljava/lang/String;

.field private SeriesName:Ljava/lang/String;

.field private SeriesPrimaryImageTag:Ljava/lang/String;

.field private SeriesStudio:Ljava/lang/String;

.field private SeriesThumbImageTag:Ljava/lang/String;

.field private SeriesTimerId:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private ShareUrl:Ljava/lang/String;

.field private ShortOverview:Ljava/lang/String;

.field private ShutterSpeed:Ljava/lang/Double;

.field private Software:Ljava/lang/String;

.field private SongCount:Ljava/lang/Integer;

.field private SortName:Ljava/lang/String;

.field private SoundtrackIds:[Ljava/lang/String;

.field private SourceType:Ljava/lang/String;

.field private StartDate:Ljava/util/Date;

.field private Status:Ljava/lang/String;

.field private Studios:[Lmediabrowser/model/dto/StudioDto;

.field private SupportsResume:Ljava/lang/Boolean;

.field private SupportsSync:Ljava/lang/Boolean;

.field private SyncPercent:Ljava/lang/Double;

.field private SyncStatus:Lmediabrowser/model/sync/SyncJobItemStatus;

.field private TagItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation
.end field

.field private Taglines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TimerId:Ljava/lang/String;

.field private TrailerCount:Ljava/lang/Integer;

.field private Type:Ljava/lang/String;

.field private UserData:Lmediabrowser/model/dto/UserItemDataDto;

.field private Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

.field private VideoType:Lmediabrowser/model/entities/VideoType;

.field private VoteCount:Ljava/lang/Integer;

.field private Width:Ljava/lang/Integer;

.field private created:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmediabrowser/model/dto/BaseItemDto;->created:J

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    .line 137
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    .line 146
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ExtraType:Lmediabrowser/model/entities/ExtraType;

    .line 156
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    .line 165
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    .line 174
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    .line 183
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    .line 192
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    .line 201
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    .line 210
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    .line 220
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    .line 268
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    .line 277
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    .line 287
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    .line 301
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsResume:Ljava/lang/Boolean;

    .line 322
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    .line 336
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    .line 350
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    .line 364
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncStatus:Lmediabrowser/model/sync/SyncJobItemStatus;

    .line 378
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    .line 403
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    .line 417
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    .line 456
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    .line 471
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    .line 516
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    .line 749
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    .line 764
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    .line 779
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    .line 794
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    .line 809
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    .line 824
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    invoke-static {}, Lmediabrowser/model/library/PlayAccess;->values()[Lmediabrowser/model/library/PlayAccess;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lmediabrowser/model/dto/BaseItemDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    .line 854
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    .line 869
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    .line 884
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    .line 923
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    .line 938
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    .line 953
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    .line 1013
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    .line 1028
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    .line 1156
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    .line 1200
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    .line 1215
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    .line 1418
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    .line 1597
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->VideoType:Lmediabrowser/model/entities/VideoType;

    .line 1627
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    .line 1636
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    .line 1880
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    invoke-static {}, Lmediabrowser/model/entities/LocationType;->values()[Lmediabrowser/model/entities/LocationType;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lmediabrowser/model/dto/BaseItemDto;->LocationType:Lmediabrowser/model/entities/LocationType;

    .line 1895
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoType:Lmediabrowser/model/entities/IsoType;

    .line 1925
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    .line 1955
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    .line 1970
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    .line 2000
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    .line 2014
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    .line 2028
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    .line 2037
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    .line 2051
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    .line 2065
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    .line 2079
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    .line 2093
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    .line 2102
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    .line 2116
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    .line 2131
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    .line 2141
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    .line 2150
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    .line 2186
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    .line 2195
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    .line 2204
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ImageOrientation:Lmediabrowser/model/drawing/ImageOrientation;

    .line 2213
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    .line 2222
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    .line 2231
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    .line 2240
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    .line 2249
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    .line 2258
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    .line 2271
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    .line 2606
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    .line 2621
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    .line 2636
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    .line 2666
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    .line 2681
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Audio:Lmediabrowser/model/livetv/ProgramAudio;

    .line 2696
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    .line 2711
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    .line 2726
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    .line 2741
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    .line 2756
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    .line 2771
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    .line 2786
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNew:Ljava/lang/Boolean;

    .line 2801
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    .line 2816
    iput-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EnableMediaSourceDisplay:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final IsType(Ljava/lang/Class;)Z
    .locals 0

    .line 1654
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final IsType(Ljava/lang/String;)Z
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getAbsoluteEpisodeNumber()Ljava/lang/Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAirTime()Ljava/lang/String;
    .locals 1

    .line 1361
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getAirsAfterSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirsBeforeEpisodeNumber()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAirsBeforeSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 159
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 1451
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumArtists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAlbumCount()Ljava/lang/Integer;
    .locals 1

    .line 2096
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAlbumId()Ljava/lang/String;
    .locals 1

    .line 1511
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1525
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getAltitude()Ljava/lang/Double;
    .locals 1

    .line 2252
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getAnimeSeriesIndex()Ljava/lang/Integer;
    .locals 1

    .line 290
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAperture()Ljava/lang/Double;
    .locals 1

    .line 2216
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    return-object v0
.end method

.method public final getArtistCount()Ljava/lang/Integer;
    .locals 1

    .line 2105
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getArtistItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ArtistItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getAudio()Lmediabrowser/model/livetv/ProgramAudio;
    .locals 1

    .line 2684
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Audio:Lmediabrowser/model/livetv/ProgramAudio;

    return-object v0
.end method

.method public final getAwardSummary()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->AwardSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackdropCount()I
    .locals 1

    .line 2329
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getBackdropImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->BackdropImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getBudget()Ljava/lang/Double;
    .locals 1

    .line 1958
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    return-object v0
.end method

.method public final getCameraMake()Ljava/lang/String;
    .locals 1

    .line 2162
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CameraMake:Ljava/lang/String;

    return-object v0
.end method

.method public final getCameraModel()Ljava/lang/String;
    .locals 1

    .line 2171
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CameraModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanDelete()Ljava/lang/Boolean;
    .locals 1

    .line 204
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanDownload()Ljava/lang/Boolean;
    .locals 1

    .line 213
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanResume()Z
    .locals 4

    .line 2305
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelNumber()Ljava/lang/String;
    .locals 1

    .line 911
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 2596
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelType()Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 2669
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-object v0
.end method

.method public final getChapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Chapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getChildCount()Ljava/lang/Integer;
    .locals 1

    .line 1218
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCollectionType()Ljava/lang/String;
    .locals 1

    .line 1466
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CollectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommunityRating()Ljava/lang/Float;
    .locals 1

    .line 752
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCompletionPercentage()Ljava/lang/Double;
    .locals 1

    .line 2624
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedMs()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lmediabrowser/model/dto/BaseItemDto;->created:J

    return-wide v0
.end method

.method public final getCriticRating()Ljava/lang/Float;
    .locals 1

    .line 519
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCriticRatingSummary()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CriticRatingSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getCumulativeRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 782
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 2862
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public final getCustomRating()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->CustomRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateCreated()Ljava/util/Date;
    .locals 1

    .line 130
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public final getDateLastMediaAdded()Ljava/util/Date;
    .locals 1

    .line 140
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    return-object v0
.end method

.method public final getDisplayMediaType()Ljava/lang/String;
    .locals 1

    .line 1615
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOrder()Ljava/lang/String;
    .locals 1

    .line 1496
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayOrder:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayPreferencesId()Ljava/lang/String;
    .locals 1

    .line 1281
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayPreferencesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplaySpecialsWithSeasons()Ljava/lang/Boolean;
    .locals 1

    .line 195
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDvdEpisodeNumber()Ljava/lang/Float;
    .locals 1

    .line 420
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDvdSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 406
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEnableMediaSourceDisplay()Ljava/lang/Boolean;
    .locals 1

    .line 2819
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EnableMediaSourceDisplay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1

    .line 1928
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getEpisodeCount()Ljava/lang/Integer;
    .locals 1

    .line 2054
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .line 2654
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->EpisodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getExposureTime()Ljava/lang/Double;
    .locals 1

    .line 2189
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    return-object v0
.end method

.method public final getExternalUrls()[Lmediabrowser/model/providers/ExternalUrl;
    .locals 1

    .line 489
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ExternalUrls:[Lmediabrowser/model/providers/ExternalUrl;

    return-object v0
.end method

.method public final getExtraType()Lmediabrowser/model/entities/ExtraType;
    .locals 1

    .line 149
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ExtraType:Lmediabrowser/model/entities/ExtraType;

    return-object v0
.end method

.method public final getFocalLength()Ljava/lang/Double;
    .locals 1

    .line 2198
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    return-object v0
.end method

.method public final getForcedSortName()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ForcedSortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameCount()Ljava/lang/Integer;
    .locals 1

    .line 2068
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getGameSystem()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->GameSystem:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenreItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->GenreItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasArtImage()Z
    .locals 2

    .line 2365
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBackdrop()Z
    .locals 1

    .line 2401
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBanner()Z
    .locals 2

    .line 2353
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBoxImage()Z
    .locals 2

    .line 2437
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Box:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasBoxRearImage()Z
    .locals 2

    .line 2449
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->BoxRear:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasDiscImage()Z
    .locals 2

    .line 2425
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasDynamicCategories()Ljava/lang/Boolean;
    .locals 1

    .line 280
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasLogo()Z
    .locals 2

    .line 2377
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasMenuImage()Z
    .locals 2

    .line 2461
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Menu:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasPrimaryImage()Z
    .locals 2

    .line 2413
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasSubtitles()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasSyncJob()Ljava/lang/Boolean;
    .locals 1

    .line 339
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasThumb()Z
    .locals 2

    .line 2389
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 2153
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHomePageUrl()Ljava/lang/String;
    .locals 1

    .line 1943
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->HomePageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageOrientation()Lmediabrowser/model/drawing/ImageOrientation;
    .locals 1

    .line 2207
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ImageOrientation:Lmediabrowser/model/drawing/ImageOrientation;

    return-object v0
.end method

.method public final getImageTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ImageTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 926
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexNumberEnd()Ljava/lang/Integer;
    .locals 1

    .line 941
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexOptions()[Ljava/lang/String;
    .locals 1

    .line 1391
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexOptions:[Ljava/lang/String;

    return-object v0
.end method

.method public final getIsAlbum()Z
    .locals 2

    .line 2556
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbum"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsArtist()Z
    .locals 2

    .line 2549
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicArtist"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsAudio()Z
    .locals 2

    .line 2485
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Audio"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsFolder()Ljava/lang/Boolean;
    .locals 1

    .line 1031
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsFolderItem()Z
    .locals 1

    .line 1042
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getIsGame()Z
    .locals 2

    .line 2497
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Game"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsGameGenre()Z
    .locals 2

    .line 2535
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameGenre"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsGenre()Z
    .locals 2

    .line 2542
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Genre"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsHD()Ljava/lang/Boolean;
    .locals 1

    .line 1016
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 2774
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsLive()Ljava/lang/Boolean;
    .locals 1

    .line 2744
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 2699
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMusicGenre()Z
    .locals 2

    .line 2528
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicGenre"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsNew()Ljava/lang/Boolean;
    .locals 1

    .line 2789
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNew:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 2759
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPerson()Z
    .locals 2

    .line 2509
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Person"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsPlaceHolder()Ljava/lang/Boolean;
    .locals 2

    .line 887
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "disc"

    iget-object v1, p0, Lmediabrowser/model/dto/BaseItemDto;->Container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getIsPremiere()Ljava/lang/Boolean;
    .locals 1

    .line 2804
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsRepeat()Ljava/lang/Boolean;
    .locals 1

    .line 2639
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsRoot()Z
    .locals 2

    .line 2521
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AggregateFolder"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 2729
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 2714
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsStudio()Z
    .locals 2

    .line 2563
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Studio"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsSynced()Ljava/lang/Boolean;
    .locals 1

    .line 353
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsVideo()Z
    .locals 2

    .line 2473
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getIsoSpeedRating()Ljava/lang/Integer;
    .locals 1

    .line 2261
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsoType()Lmediabrowser/model/entities/IsoType;
    .locals 1

    .line 1898
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoType:Lmediabrowser/model/entities/IsoType;

    return-object v0
.end method

.method public final getKeywords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Keywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 2234
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLocalTrailerCount()Ljava/lang/Integer;
    .locals 1

    .line 1159
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLocationType()Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 1883
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LocationType:Lmediabrowser/model/entities/LocationType;

    return-object v0
.end method

.method public final getLockData()Ljava/lang/Boolean;
    .locals 1

    .line 2134
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLockedFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MetadataFields;",
            ">;"
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->LockedFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 2243
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMediaSourceCount()Ljava/lang/Integer;
    .locals 1

    .line 1639
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1585
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 1913
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetascore()Ljava/lang/Float;
    .locals 1

    .line 271
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMovieCount()Ljava/lang/Integer;
    .locals 1

    .line 2017
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMultiPartGameFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MultiPartGameFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMusicVideoCount()Ljava/lang/Integer;
    .locals 1

    .line 2119
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfficialRating()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->OfficialRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalCollectionType()Ljava/lang/String;
    .locals 1

    .line 1481
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalCollectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 797
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOriginalTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverview()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Overview:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentArtImageTag()Ljava/lang/String;
    .locals 1

    .line 1763
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentArtImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentArtItemId()Ljava/lang/String;
    .locals 1

    .line 1748
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentArtItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentBackdropImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1144
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParentBackdropItemId()Ljava/lang/String;
    .locals 1

    .line 1129
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentBackdropItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 1054
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 956
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getParentLogoImageTag()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentLogoImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentLogoItemId()Ljava/lang/String;
    .locals 1

    .line 1114
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentLogoItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 1838
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1853
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 1823
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentThumbItemId()Ljava/lang/String;
    .locals 1

    .line 1808
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentThumbItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartCount()Ljava/lang/Integer;
    .locals 1

    .line 1630
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeople()[Lmediabrowser/model/dto/BaseItemPerson;
    .locals 1

    .line 1084
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->People:[Lmediabrowser/model/dto/BaseItemPerson;

    return-object v0
.end method

.method public final getPlayAccess()Lmediabrowser/model/library/PlayAccess;
    .locals 1

    .line 827
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    return-object v0
.end method

.method public final getPlayers()Ljava/lang/Integer;
    .locals 1

    .line 872
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaylistItemId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PlaylistItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredMetadataCountryCode()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PreferredMetadataCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredMetadataLanguage()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PreferredMetadataLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 2848
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getPremiereDate()Ljava/util/Date;
    .locals 1

    .line 474
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPrimaryImageAspectRatio()Ljava/lang/Double;
    .locals 1

    .line 1421
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductionLocations()[Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProductionLocations:[Ljava/lang/String;

    return-object v0
.end method

.method public final getProductionYear()Ljava/lang/Integer;
    .locals 1

    .line 857
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgramCount()Ljava/lang/Integer;
    .locals 1

    .line 2040
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgramId()Ljava/lang/String;
    .locals 1

    .line 2581
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviderIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ProviderIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getRecordingCount()Ljava/lang/Integer;
    .locals 1

    .line 2274
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRecordingStatus()Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 1332
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmediabrowser/model/livetv/RecordingStatus;->valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getRecursiveItemCount()Ljava/lang/Integer;
    .locals 1

    .line 1203
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRemoteTrailers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaUrl;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RemoteTrailers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResumePositionTicks()J
    .locals 2

    .line 2317
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getRevenue()Ljava/lang/Double;
    .locals 1

    .line 1973
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 812
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getScreenshotCount()I
    .locals 1

    .line 2341
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getScreenshotImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getScreenshotImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getScreenshotImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ScreenshotImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSeasonId()Ljava/lang/String;
    .locals 1

    .line 1263
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonName()Ljava/lang/String;
    .locals 1

    .line 1570
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonUserData()Lmediabrowser/model/dto/UserItemDataDto;
    .locals 1

    .line 1188
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonUserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-object v0
.end method

.method public final getSeriesCount()Ljava/lang/Integer;
    .locals 1

    .line 2031
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeriesGenres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesGenres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 1248
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesName()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 1540
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesStatus()Lmediabrowser/model/entities/SeriesStatus;
    .locals 1

    .line 1307
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmediabrowser/model/entities/SeriesStatus;->valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/SeriesStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getSeriesStudio()Ljava/lang/String;
    .locals 1

    .line 1793
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesStudio:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 1778
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 2289
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareUrl()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortOverview()Ljava/lang/String;
    .locals 1

    .line 677
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ShortOverview:Ljava/lang/String;

    return-object v0
.end method

.method public final getShutterSpeed()Ljava/lang/Double;
    .locals 1

    .line 2225
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSoftware()Ljava/lang/String;
    .locals 1

    .line 2180
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Software:Ljava/lang/String;

    return-object v0
.end method

.method public final getSongCount()Ljava/lang/Integer;
    .locals 1

    .line 2082
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSortName()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoundtrackIds()[Ljava/lang/String;
    .locals 1

    .line 986
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SoundtrackIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    .line 2609
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 1296
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public final getStudios()[Lmediabrowser/model/dto/StudioDto;
    .locals 1

    .line 1099
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Studios:[Lmediabrowser/model/dto/StudioDto;

    return-object v0
.end method

.method public final getSupportsPlaylists()Z
    .locals 1

    .line 1666
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsGenre()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsMusicGenre()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsArtist()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getSupportsResume()Ljava/lang/Boolean;
    .locals 1

    .line 304
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsResume:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsResume:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportsSimilarItems()Z
    .locals 1

    const-string v0, "Movie"

    .line 2570
    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Series"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicAlbum"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicArtist"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Program"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Recording"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ChannelVideoItem"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Game"

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/BaseItemDto;->IsType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getSupportsSync()Ljava/lang/Boolean;
    .locals 1

    .line 325
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSyncPercent()Ljava/lang/Double;
    .locals 1

    .line 381
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSyncStatus()Lmediabrowser/model/sync/SyncJobItemStatus;
    .locals 1

    .line 367
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncStatus:Lmediabrowser/model/sync/SyncJobItemStatus;

    return-object v0
.end method

.method public final getTagItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->TagItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTaglines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Taglines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTimerId()Ljava/lang/String;
    .locals 1

    .line 2834
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->TimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrailerCount()Ljava/lang/Integer;
    .locals 1

    .line 2003
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserData()Lmediabrowser/model/dto/UserItemDataDto;
    .locals 1

    .line 1174
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->UserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-object v0
.end method

.method public final getVideo3DFormat()Lmediabrowser/model/entities/Video3DFormat;
    .locals 1

    .line 459
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    return-object v0
.end method

.method public final getVideoType()Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 1600
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->VideoType:Lmediabrowser/model/entities/VideoType;

    return-object v0
.end method

.method public final getVoteCount()Ljava/lang/Integer;
    .locals 1

    .line 767
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 2144
    iget-object v0, p0, Lmediabrowser/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAbsoluteEpisodeNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AbsoluteEpisodeNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirDays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AirDays:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAirTime(Ljava/lang/String;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AirTime:Ljava/lang/String;

    return-void
.end method

.method public final setAirsAfterSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsAfterSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirsBeforeEpisodeNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeEpisodeNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAirsBeforeSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AirsBeforeSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumArtists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 1559
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumArtists:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAlbumCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2100
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumId:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AlbumPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 2256
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Altitude:Ljava/lang/Double;

    return-void
.end method

.method public final setAnimeSeriesIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AnimeSeriesIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setAperture(Ljava/lang/Double;)V
    .locals 0

    .line 2220
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Aperture:Ljava/lang/Double;

    return-void
.end method

.method public final setArtistCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2109
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ArtistCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setArtistItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 1440
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ArtistItems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AspectRatio:Ljava/lang/String;

    return-void
.end method

.method public final setAudio(Lmediabrowser/model/livetv/ProgramAudio;)V
    .locals 0

    .line 2688
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Audio:Lmediabrowser/model/livetv/ProgramAudio;

    return-void
.end method

.method public final setAwardSummary(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->AwardSummary:Ljava/lang/String;

    return-void
.end method

.method public final setBackdropImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1707
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->BackdropImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setBudget(Ljava/lang/Double;)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Budget:Ljava/lang/Double;

    return-void
.end method

.method public final setCameraMake(Ljava/lang/String;)V
    .locals 0

    .line 2166
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CameraMake:Ljava/lang/String;

    return-void
.end method

.method public final setCameraModel(Ljava/lang/String;)V
    .locals 0

    .line 2175
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CameraModel:Ljava/lang/String;

    return-void
.end method

.method public final setCanDelete(Ljava/lang/Boolean;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDelete:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCanDownload(Ljava/lang/Boolean;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CanDownload:Ljava/lang/Boolean;

    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setChannelNumber(Ljava/lang/String;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelNumber:Ljava/lang/String;

    return-void
.end method

.method public final setChannelPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 2600
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setChannelType(Lmediabrowser/model/livetv/ChannelType;)V
    .locals 0

    .line 2673
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-void
.end method

.method public final setChapters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 1872
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Chapters:Ljava/util/ArrayList;

    return-void
.end method

.method public final setChildCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ChildCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setCollectionType(Ljava/lang/String;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CollectionType:Ljava/lang/String;

    return-void
.end method

.method public final setCommunityRating(Ljava/lang/Float;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CommunityRating:Ljava/lang/Float;

    return-void
.end method

.method public final setCompletionPercentage(Ljava/lang/Double;)V
    .locals 0

    .line 2628
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CompletionPercentage:Ljava/lang/Double;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setCriticRating(Ljava/lang/Float;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CriticRating:Ljava/lang/Float;

    return-void
.end method

.method public final setCriticRatingSummary(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CriticRatingSummary:Ljava/lang/String;

    return-void
.end method

.method public final setCumulativeRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CumulativeRunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setCurrentProgram(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 2866
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public final setCustomRating(Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->CustomRating:Ljava/lang/String;

    return-void
.end method

.method public final setDateCreated(Ljava/util/Date;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DateCreated:Ljava/util/Date;

    return-void
.end method

.method public final setDateLastMediaAdded(Ljava/util/Date;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DateLastMediaAdded:Ljava/util/Date;

    return-void
.end method

.method public final setDisplayMediaType(Ljava/lang/String;)V
    .locals 0

    .line 1619
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayMediaType:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayOrder(Ljava/lang/String;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayOrder:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayPreferencesId(Ljava/lang/String;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplayPreferencesId:Ljava/lang/String;

    return-void
.end method

.method public final setDisplaySpecialsWithSeasons(Ljava/lang/Boolean;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DisplaySpecialsWithSeasons:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDvdEpisodeNumber(Ljava/lang/Float;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdEpisodeNumber:Ljava/lang/Float;

    return-void
.end method

.method public final setDvdSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->DvdSeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnableMediaSourceDisplay(Ljava/lang/Boolean;)V
    .locals 0

    .line 2823
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->EnableMediaSourceDisplay:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->EndDate:Ljava/util/Date;

    return-void
.end method

.method public final setEpisodeCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2058
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->EpisodeCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .line 2658
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->EpisodeTitle:Ljava/lang/String;

    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Etag:Ljava/lang/String;

    return-void
.end method

.method public final setExposureTime(Ljava/lang/Double;)V
    .locals 0

    .line 2193
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ExposureTime:Ljava/lang/Double;

    return-void
.end method

.method public final setExternalUrls([Lmediabrowser/model/providers/ExternalUrl;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ExternalUrls:[Lmediabrowser/model/providers/ExternalUrl;

    return-void
.end method

.method public final setExtraType(Lmediabrowser/model/entities/ExtraType;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ExtraType:Lmediabrowser/model/entities/ExtraType;

    return-void
.end method

.method public final setFocalLength(Ljava/lang/Double;)V
    .locals 0

    .line 2202
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->FocalLength:Ljava/lang/Double;

    return-void
.end method

.method public final setForcedSortName(Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ForcedSortName:Ljava/lang/String;

    return-void
.end method

.method public final setGameCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2072
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->GameCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setGameSystem(Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->GameSystem:Ljava/lang/String;

    return-void
.end method

.method public final setGenreItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 726
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->GenreItems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setHasDynamicCategories(Ljava/lang/Boolean;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->HasDynamicCategories:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasSubtitles(Ljava/lang/Boolean;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSubtitles:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasSyncJob(Ljava/lang/Boolean;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->HasSyncJob:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 2157
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setHomePageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->HomePageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setImageOrientation(Lmediabrowser/model/drawing/ImageOrientation;)V
    .locals 0

    .line 2211
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ImageOrientation:Lmediabrowser/model/drawing/ImageOrientation;

    return-void
.end method

.method public final setImageTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1692
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ImageTags:Ljava/util/HashMap;

    return-void
.end method

.method public final setIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexNumberEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexNumberEnd:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexOptions([Ljava/lang/String;)V
    .locals 0

    .line 1395
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IndexOptions:[Ljava/lang/String;

    return-void
.end method

.method public final setIsFolder(Ljava/lang/Boolean;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsFolder:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsHD(Ljava/lang/Boolean;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsHD:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 2778
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsLive(Ljava/lang/Boolean;)V
    .locals 0

    .line 2748
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsLive:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 2703
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNew(Ljava/lang/Boolean;)V
    .locals 0

    .line 2793
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNew:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 2763
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsPlaceHolder(Ljava/lang/Boolean;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPlaceHolder:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsPremiere(Ljava/lang/Boolean;)V
    .locals 0

    .line 2808
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsPremiere:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsRepeat(Ljava/lang/Boolean;)V
    .locals 0

    .line 2643
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsRepeat:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 2733
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 2718
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSynced(Ljava/lang/Boolean;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsSynced:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsoSpeedRating(Ljava/lang/Integer;)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoSpeedRating:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsoType(Lmediabrowser/model/entities/IsoType;)V
    .locals 0

    .line 1902
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->IsoType:Lmediabrowser/model/entities/IsoType;

    return-void
.end method

.method public final setKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1410
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Keywords:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 2238
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLocalTrailerCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->LocalTrailerCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setLocationType(Lmediabrowser/model/entities/LocationType;)V
    .locals 0

    .line 1887
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->LocationType:Lmediabrowser/model/entities/LocationType;

    return-void
.end method

.method public final setLockData(Ljava/lang/Boolean;)V
    .locals 0

    .line 2138
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->LockData:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLockedFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MetadataFields;",
            ">;)V"
        }
    .end annotation

    .line 1992
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->LockedFields:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 2247
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setMediaSourceCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1643
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaSourceCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaSources(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaSources:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 1589
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaStreams:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setMetascore(Ljava/lang/Float;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Metascore:Ljava/lang/Float;

    return-void
.end method

.method public final setMovieCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MovieCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setMultiPartGameFiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MultiPartGameFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMusicVideoCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2123
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->MusicVideoCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Number:Ljava/lang/String;

    return-void
.end method

.method public final setOfficialRating(Ljava/lang/String;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->OfficialRating:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalCollectionType(Ljava/lang/String;)V
    .locals 0

    .line 1485
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalCollectionType:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalRunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setOriginalTitle(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->OriginalTitle:Ljava/lang/String;

    return-void
.end method

.method public final setOverview(Ljava/lang/String;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Overview:Ljava/lang/String;

    return-void
.end method

.method public final setParentArtImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1767
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentArtImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentArtItemId(Ljava/lang/String;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentArtItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentBackdropImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setParentBackdropItemId(Ljava/lang/String;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentBackdropItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setParentLogoImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1737
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentLogoImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentLogoItemId(Ljava/lang/String;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentLogoItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 1842
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentPrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setParentPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1857
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1827
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setParentThumbItemId(Ljava/lang/String;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ParentThumbItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPartCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PartCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPeople([Lmediabrowser/model/dto/BaseItemPerson;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->People:[Lmediabrowser/model/dto/BaseItemPerson;

    return-void
.end method

.method public final setPlayAccess(Lmediabrowser/model/library/PlayAccess;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    return-void
.end method

.method public final setPlayers(Ljava/lang/Integer;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Players:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlaylistItemId(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PlaylistItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPreferredMetadataCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PreferredMetadataCountryCode:Ljava/lang/String;

    return-void
.end method

.method public final setPreferredMetadataLanguage(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PreferredMetadataLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 2852
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Prefix:Ljava/lang/String;

    return-void
.end method

.method public final setPremiereDate(Ljava/util/Date;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PremiereDate:Ljava/util/Date;

    return-void
.end method

.method public final setPrimaryImageAspectRatio(Ljava/lang/Double;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public final setProductionLocations([Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ProductionLocations:[Ljava/lang/String;

    return-void
.end method

.method public final setProductionYear(Ljava/lang/Integer;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ProductionYear:Ljava/lang/Integer;

    return-void
.end method

.method public final setProgramCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2044
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ProgramCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setProgramId(Ljava/lang/String;)V
    .locals 0

    .line 2585
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ProgramId:Ljava/lang/String;

    return-void
.end method

.method public final setProviderIds(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1005
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ProviderIds:Ljava/util/HashMap;

    return-void
.end method

.method public final setRecordingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2278
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->RecordingCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setRecordingStatus(Lmediabrowser/model/livetv/RecordingStatus;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1345
    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1349
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setRecursiveItemCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->RecursiveItemCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setRemoteTrailers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaUrl;",
            ">;)V"
        }
    .end annotation

    .line 975
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->RemoteTrailers:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRevenue(Ljava/lang/Double;)V
    .locals 0

    .line 1977
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Revenue:Ljava/lang/Double;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setScreenshotImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1722
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ScreenshotImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSeasonId(Ljava/lang/String;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonId:Ljava/lang/String;

    return-void
.end method

.method public final setSeasonName(Ljava/lang/String;)V
    .locals 0

    .line 1574
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonName:Ljava/lang/String;

    return-void
.end method

.method public final setSeasonUserData(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeasonUserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-void
.end method

.method public final setSeriesCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setSeriesGenres(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesGenres:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSeriesId(Ljava/lang/String;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesId:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesName(Ljava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesName:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesPrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesStatus(Lmediabrowser/model/entities/SeriesStatus;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1320
    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/SeriesStatus;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setStatus(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setSeriesStudio(Ljava/lang/String;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesStudio:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 2293
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public final setShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ShareUrl:Ljava/lang/String;

    return-void
.end method

.method public final setShortOverview(Ljava/lang/String;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ShortOverview:Ljava/lang/String;

    return-void
.end method

.method public final setShutterSpeed(Ljava/lang/Double;)V
    .locals 0

    .line 2229
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->ShutterSpeed:Ljava/lang/Double;

    return-void
.end method

.method public final setSoftware(Ljava/lang/String;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Software:Ljava/lang/String;

    return-void
.end method

.method public final setSongCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2086
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SongCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setSortName(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SortName:Ljava/lang/String;

    return-void
.end method

.method public final setSoundtrackIds([Ljava/lang/String;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SoundtrackIds:[Ljava/lang/String;

    return-void
.end method

.method public final setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SourceType:Ljava/lang/String;

    return-void
.end method

.method public final setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 2613
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->StartDate:Ljava/util/Date;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Status:Ljava/lang/String;

    return-void
.end method

.method public final setStudios([Lmediabrowser/model/dto/StudioDto;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Studios:[Lmediabrowser/model/dto/StudioDto;

    return-void
.end method

.method public final setSupportsResume(Ljava/lang/Boolean;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsResume:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSupportsSync(Ljava/lang/Boolean;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SupportsSync:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSyncPercent(Ljava/lang/Double;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncPercent:Ljava/lang/Double;

    return-void
.end method

.method public final setSyncStatus(Lmediabrowser/model/sync/SyncJobItemStatus;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->SyncStatus:Lmediabrowser/model/sync/SyncJobItemStatus;

    return-void
.end method

.method public final setTagItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameIdPair;",
            ">;)V"
        }
    .end annotation

    .line 711
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->TagItems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTaglines(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Taglines:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTimerId(Ljava/lang/String;)V
    .locals 0

    .line 2838
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->TimerId:Ljava/lang/String;

    return-void
.end method

.method public final setTrailerCount(Ljava/lang/Integer;)V
    .locals 0

    .line 2007
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->TrailerCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Type:Ljava/lang/String;

    return-void
.end method

.method public final setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->UserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-void
.end method

.method public final setVideo3DFormat(Lmediabrowser/model/entities/Video3DFormat;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    return-void
.end method

.method public final setVideoType(Lmediabrowser/model/entities/VideoType;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->VideoType:Lmediabrowser/model/entities/VideoType;

    return-void
.end method

.method public final setVoteCount(Ljava/lang/Integer;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->VoteCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 2148
    iput-object p1, p0, Lmediabrowser/model/dto/BaseItemDto;->Width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2871
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

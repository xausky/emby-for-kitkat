.class public Lmediabrowser/model/configuration/ServerConfiguration;
.super Lmediabrowser/model/configuration/BaseApplicationConfiguration;
.source "ServerConfiguration.java"


# static fields
.field public static final DefaultHttpPort:I = 0x1fa0

.field public static final DefaultHttpsPort:I = 0x22d8


# instance fields
.field private CertificatePath:Ljava/lang/String;

.field private CodecsUsed:[Ljava/lang/String;

.field private ContentTypes:[Lmediabrowser/model/dto/NameValuePair;

.field private DashboardSourcePath:Ljava/lang/String;

.field private DisplayCollectionsView:Z

.field private DisplaySpecialsWithinSeasons:Z

.field private EnableAnonymousUsageReporting:Z

.field private EnableAutomaticRestart:Z

.field private EnableCaseSensitiveItemIds:Z

.field private EnableChannelView:Z

.field private EnableDashboardResponseCaching:Z

.field private EnableExternalContentInSuggestions:Z

.field private EnableFolderView:Z

.field private EnableGroupingIntoCollections:Z

.field private EnableHttps:Z

.field private EnableLocalizedGuids:Z

.field private EnableNormalizedItemByNameIds:Z

.field private EnableSeriesPresentationUniqueKey:Z

.field private EnableSimpleArtistDetection:Z

.field private EnableStandaloneMusicKeys:Z

.field private EnableUPnP:Z

.field private HttpServerPortNumber:I

.field private HttpsPortNumber:I

.field private ImageExtractionTimeoutMs:I

.field private ImageSavingConvention:Lmediabrowser/model/configuration/ImageSavingConvention;

.field private IsPortAuthorized:Z

.field private LastVersion:Ljava/lang/String;

.field private LibraryMonitorDelay:I

.field private LocalNetworkAddresses:[Ljava/lang/String;

.field private MaxResumePct:I

.field private MetadataCountryCode:Ljava/lang/String;

.field private MetadataNetworkPath:Ljava/lang/String;

.field private MetadataOptions:[Lmediabrowser/model/configuration/MetadataOptions;

.field private MetadataPath:Ljava/lang/String;

.field private Migrations:[Ljava/lang/String;

.field private MinResumeDurationSeconds:I

.field private MinResumePct:I

.field private PathSubstitutions:[Lmediabrowser/model/configuration/PathSubstitution;

.field private PreferredMetadataLanguage:Ljava/lang/String;

.field private PublicHttpsPort:I

.field private PublicPort:I

.field private RemoteClientBitrateLimit:I

.field private SaveMetadataHidden:Z

.field private SchemaVersion:I

.field private SeasonZeroDisplayName:Ljava/lang/String;

.field private ServerName:Ljava/lang/String;

.field private SharingExpirationDays:I

.field private SkipDeserializationForAudio:Z

.field private SkipDeserializationForBasicTypes:Z

.field private SkipDeserializationForPrograms:Z

.field private SortRemoveCharacters:[Ljava/lang/String;

.field private SortRemoveWords:[Ljava/lang/String;

.field private SortReplaceCharacters:[Ljava/lang/String;

.field private UICulture:Ljava/lang/String;

.field private WanDdns:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 667
    invoke-direct/range {p0 .. p0}, Lmediabrowser/model/configuration/BaseApplicationConfiguration;-><init>()V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lmediabrowser/model/configuration/ServerConfiguration;->getImageSavingConvention()Lmediabrowser/model/configuration/ImageSavingConvention;

    invoke-static {}, Lmediabrowser/model/configuration/ImageSavingConvention;->values()[Lmediabrowser/model/configuration/ImageSavingConvention;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageSavingConvention:Lmediabrowser/model/configuration/ImageSavingConvention;

    .line 668
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setLocalNetworkAddresses([Ljava/lang/String;)V

    .line 669
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setCodecsUsed([Ljava/lang/String;)V

    .line 670
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setMigrations([Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v2}, Lmediabrowser/model/configuration/ServerConfiguration;->setImageExtractionTimeoutMs(I)V

    const/4 v1, 0x1

    .line 672
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableLocalizedGuids(Z)V

    .line 673
    new-array v3, v2, [Lmediabrowser/model/configuration/PathSubstitution;

    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setPathSubstitutions([Lmediabrowser/model/configuration/PathSubstitution;)V

    .line 674
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableSimpleArtistDetection(Z)V

    .line 676
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setDisplaySpecialsWithinSeasons(Z)V

    .line 677
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableExternalContentInSuggestions(Z)V

    .line 679
    iget-object v3, v0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageSavingConvention:Lmediabrowser/model/configuration/ImageSavingConvention;

    sget-object v3, Lmediabrowser/model/configuration/ImageSavingConvention;->Compatible:Lmediabrowser/model/configuration/ImageSavingConvention;

    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setImageSavingConvention(Lmediabrowser/model/configuration/ImageSavingConvention;)V

    const/16 v3, 0x1fa0

    .line 680
    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setPublicPort(I)V

    const/16 v4, 0x22d8

    .line 681
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setPublicHttpsPort(I)V

    .line 682
    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setHttpServerPortNumber(I)V

    .line 683
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setHttpsPortNumber(I)V

    .line 684
    invoke-virtual {v0, v2}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableHttps(Z)V

    .line 685
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableDashboardResponseCaching(Z)V

    .line 686
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableAnonymousUsageReporting(Z)V

    .line 688
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableAutomaticRestart(Z)V

    .line 689
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableFolderView(Z)V

    .line 691
    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/ServerConfiguration;->setEnableUPnP(Z)V

    const/16 v3, 0x1e

    .line 692
    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setSharingExpirationDays(I)V

    const/4 v3, 0x5

    .line 693
    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/ServerConfiguration;->setMinResumePct(I)V

    const/16 v4, 0x5a

    .line 694
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setMaxResumePct(I)V

    const/16 v4, 0x12c

    .line 697
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setMinResumeDurationSeconds(I)V

    const/16 v4, 0x3c

    .line 699
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setLibraryMonitorDelay(I)V

    .line 701
    new-array v4, v2, [Lmediabrowser/model/dto/NameValuePair;

    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setContentTypes([Lmediabrowser/model/dto/NameValuePair;)V

    const-string v4, "en"

    .line 703
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setPreferredMetadataLanguage(Ljava/lang/String;)V

    const-string v4, "US"

    .line 704
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setMetadataCountryCode(Ljava/lang/String;)V

    const-string v4, "."

    const-string v5, "+"

    const-string v6, "%"

    .line 706
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setSortReplaceCharacters([Ljava/lang/String;)V

    const-string v5, ","

    const-string v6, "&"

    const-string v7, "-"

    const-string v8, "{"

    const-string v9, "}"

    const-string v10, "\'"

    .line 707
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setSortRemoveCharacters([Ljava/lang/String;)V

    const-string v4, "the"

    const-string v5, "a"

    const-string v6, "an"

    .line 708
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setSortRemoveWords([Ljava/lang/String;)V

    const-string v4, "Specials"

    .line 710
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setSeasonZeroDisplayName(Ljava/lang/String;)V

    const-string v4, "en-us"

    .line 712
    invoke-virtual {v0, v4}, Lmediabrowser/model/configuration/ServerConfiguration;->setUICulture(Ljava/lang/String;)V

    .line 714
    new-instance v4, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v5, 0x500

    invoke-direct {v4, v1, v5}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v6, "Book"

    .line 715
    invoke-virtual {v4, v6}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 716
    new-instance v6, Lmediabrowser/model/configuration/MetadataOptions;

    invoke-direct {v6, v1, v5}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v7, "Movie"

    .line 717
    invoke-virtual {v6, v7}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 718
    new-instance v7, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v7}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 719
    invoke-virtual {v7, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 720
    invoke-virtual {v7, v5}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 721
    sget-object v8, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v7, v8}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 722
    new-instance v8, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v8}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 723
    invoke-virtual {v8, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 724
    sget-object v9, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v8, v9}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 725
    new-instance v9, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v9}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 726
    invoke-virtual {v9, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 727
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v9, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 728
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 729
    invoke-virtual {v10, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 730
    sget-object v11, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v11}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 731
    new-instance v11, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v11}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 732
    invoke-virtual {v11, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 733
    sget-object v12, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v11, v12}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 734
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 735
    invoke-virtual {v12, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 736
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 737
    new-instance v13, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v13}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 738
    invoke-virtual {v13, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 739
    sget-object v14, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v13, v14}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v14, 0x7

    .line 740
    new-array v15, v14, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v7, v15, v2

    aput-object v8, v15, v1

    const/4 v7, 0x2

    aput-object v9, v15, v7

    const/4 v8, 0x3

    aput-object v10, v15, v8

    const/4 v9, 0x4

    aput-object v11, v15, v9

    aput-object v12, v15, v3

    const/4 v10, 0x6

    aput-object v13, v15, v10

    invoke-virtual {v6, v15}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    .line 741
    new-instance v11, Lmediabrowser/model/configuration/MetadataOptions;

    invoke-direct {v11, v1, v5}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v12, "MusicVideo"

    .line 742
    invoke-virtual {v11, v12}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 743
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 744
    invoke-virtual {v12, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 745
    invoke-virtual {v12, v5}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 746
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 747
    new-instance v13, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v13}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 748
    invoke-virtual {v13, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 749
    sget-object v15, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v13, v15}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 750
    new-instance v15, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v15}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 751
    invoke-virtual {v15, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 752
    sget-object v5, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v15, v5}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 753
    new-instance v5, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v5}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 754
    invoke-virtual {v5, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 755
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v5, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 756
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 757
    invoke-virtual {v10, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 758
    sget-object v3, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v3}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 759
    new-instance v3, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v3}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 760
    invoke-virtual {v3, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 761
    sget-object v9, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v3, v9}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 762
    new-instance v9, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v9}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 763
    invoke-virtual {v9, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 764
    sget-object v8, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v9, v8}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 765
    new-array v8, v14, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v12, v8, v2

    aput-object v13, v8, v1

    aput-object v15, v8, v7

    const/4 v12, 0x3

    aput-object v5, v8, v12

    const/4 v5, 0x4

    aput-object v10, v8, v5

    const/4 v5, 0x5

    aput-object v3, v8, v5

    const/4 v3, 0x6

    aput-object v9, v8, v3

    invoke-virtual {v11, v8}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    .line 766
    new-instance v3, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v5, 0x500

    invoke-direct {v3, v1, v5}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v8, "Series"

    .line 767
    invoke-virtual {v3, v8}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 768
    new-instance v8, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v8}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 769
    invoke-virtual {v8, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 770
    invoke-virtual {v8, v5}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 771
    sget-object v5, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v8, v5}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 772
    new-instance v5, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v5}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 773
    invoke-virtual {v5, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 774
    sget-object v9, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v5, v9}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 775
    new-instance v9, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v9}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 776
    invoke-virtual {v9, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 777
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v9, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 778
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 779
    invoke-virtual {v10, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 780
    sget-object v12, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v12}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 781
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 782
    invoke-virtual {v12, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 783
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 784
    new-instance v13, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v13}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 785
    invoke-virtual {v13, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 786
    sget-object v15, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v13, v15}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v15, 0x6

    .line 787
    new-array v14, v15, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v8, v14, v2

    aput-object v5, v14, v1

    aput-object v9, v14, v7

    const/4 v5, 0x3

    aput-object v10, v14, v5

    const/4 v5, 0x4

    aput-object v12, v14, v5

    const/4 v5, 0x5

    aput-object v13, v14, v5

    invoke-virtual {v3, v14}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    .line 788
    new-instance v5, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v8, 0x500

    invoke-direct {v5, v1, v8}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v9, "MusicAlbum"

    .line 789
    invoke-virtual {v5, v9}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 790
    new-instance v9, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v9}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 791
    invoke-virtual {v9, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 792
    invoke-virtual {v9, v8}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 793
    sget-object v8, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v9, v8}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 794
    new-instance v8, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v8}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 795
    invoke-virtual {v8, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 796
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v8, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 797
    new-array v10, v7, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v9, v10, v2

    aput-object v8, v10, v1

    invoke-virtual {v5, v10}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    const-string v8, "TheAudioDB"

    .line 798
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataFetchers([Ljava/lang/String;)V

    .line 799
    new-instance v8, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v9, 0x500

    invoke-direct {v8, v1, v9}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v10, "MusicArtist"

    .line 800
    invoke-virtual {v8, v10}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 801
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 802
    invoke-virtual {v10, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 803
    invoke-virtual {v10, v9}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 804
    sget-object v9, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v9}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 805
    new-instance v9, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v9}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 806
    invoke-virtual {v9, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 807
    sget-object v12, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v9, v12}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 808
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 809
    invoke-virtual {v12, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 810
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 811
    new-instance v13, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v13}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 812
    invoke-virtual {v13, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 813
    sget-object v14, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v13, v14}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v14, 0x4

    .line 814
    new-array v15, v14, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v10, v15, v2

    aput-object v9, v15, v1

    aput-object v12, v15, v7

    const/4 v9, 0x3

    aput-object v13, v15, v9

    invoke-virtual {v8, v15}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    const-string v9, "TheAudioDB"

    .line 815
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataFetchers([Ljava/lang/String;)V

    .line 816
    new-instance v9, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v10, 0x500

    invoke-direct {v9, v1, v10}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v12, "BoxSet"

    .line 817
    invoke-virtual {v9, v12}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 818
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 819
    invoke-virtual {v12, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 820
    invoke-virtual {v12, v10}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 821
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 822
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 823
    invoke-virtual {v10, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 824
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 825
    new-instance v13, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v13}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 826
    invoke-virtual {v13, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 827
    sget-object v14, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v13, v14}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 828
    new-instance v14, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v14}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 829
    invoke-virtual {v14, v1}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 830
    sget-object v15, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v14, v15}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 831
    new-instance v15, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v15}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 832
    invoke-virtual {v15, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 833
    sget-object v7, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v15, v7}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 834
    new-instance v7, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v7}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 835
    invoke-virtual {v7, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 836
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Disc:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v7, v1}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 837
    new-instance v1, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v1}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 838
    invoke-virtual {v1, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 839
    sget-object v2, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v2, 0x7

    .line 840
    new-array v0, v2, [Lmediabrowser/model/configuration/ImageOption;

    const/4 v2, 0x0

    aput-object v12, v0, v2

    const/4 v12, 0x1

    aput-object v10, v0, v12

    const/4 v10, 0x2

    aput-object v13, v0, v10

    const/4 v10, 0x3

    aput-object v14, v0, v10

    const/4 v10, 0x4

    aput-object v15, v0, v10

    const/4 v10, 0x5

    aput-object v7, v0, v10

    const/4 v7, 0x6

    aput-object v1, v0, v7

    invoke-virtual {v9, v0}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    .line 841
    new-instance v0, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v1, 0x500

    invoke-direct {v0, v2, v1}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v7, "Season"

    .line 842
    invoke-virtual {v0, v7}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 843
    new-instance v7, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v7}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 844
    invoke-virtual {v7, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 845
    invoke-virtual {v7, v1}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 846
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v7, v1}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 847
    new-instance v1, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v1}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    const/4 v10, 0x1

    .line 848
    invoke-virtual {v1, v10}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 849
    sget-object v10, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v10}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 850
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 851
    invoke-virtual {v10, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 852
    sget-object v12, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v12}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 853
    new-instance v12, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v12}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 854
    invoke-virtual {v12, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 855
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v12, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v13, 0x4

    .line 856
    new-array v14, v13, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v7, v14, v2

    const/4 v7, 0x1

    aput-object v1, v14, v7

    const/4 v1, 0x2

    aput-object v10, v14, v1

    const/4 v1, 0x3

    aput-object v12, v14, v1

    invoke-virtual {v0, v14}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    const-string v1, "TheMovieDb"

    .line 857
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataFetchers([Ljava/lang/String;)V

    .line 858
    new-instance v1, Lmediabrowser/model/configuration/MetadataOptions;

    const/16 v7, 0x500

    invoke-direct {v1, v2, v7}, Lmediabrowser/model/configuration/MetadataOptions;-><init>(II)V

    const-string v10, "Episode"

    .line 859
    invoke-virtual {v1, v10}, Lmediabrowser/model/configuration/MetadataOptions;->setItemType(Ljava/lang/String;)V

    .line 860
    new-instance v10, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v10}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    .line 861
    invoke-virtual {v10, v2}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 862
    invoke-virtual {v10, v7}, Lmediabrowser/model/configuration/ImageOption;->setMinWidth(I)V

    .line 863
    sget-object v7, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v10, v7}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    .line 864
    new-instance v7, Lmediabrowser/model/configuration/ImageOption;

    invoke-direct {v7}, Lmediabrowser/model/configuration/ImageOption;-><init>()V

    const/4 v12, 0x1

    .line 865
    invoke-virtual {v7, v12}, Lmediabrowser/model/configuration/ImageOption;->setLimit(I)V

    .line 866
    sget-object v13, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v7, v13}, Lmediabrowser/model/configuration/ImageOption;->setType(Lmediabrowser/model/entities/ImageType;)V

    const/4 v13, 0x2

    .line 867
    new-array v14, v13, [Lmediabrowser/model/configuration/ImageOption;

    aput-object v10, v14, v2

    aput-object v7, v14, v12

    invoke-virtual {v1, v14}, Lmediabrowser/model/configuration/MetadataOptions;->setImageOptions([Lmediabrowser/model/configuration/ImageOption;)V

    const-string v2, "The Open Movie Database"

    const-string v7, "TheMovieDb"

    .line 868
    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledMetadataFetchers([Ljava/lang/String;)V

    const-string v2, "The Open Movie Database"

    const-string v7, "TheMovieDb"

    .line 869
    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/configuration/MetadataOptions;->setDisabledImageFetchers([Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 870
    new-array v2, v2, [Lmediabrowser/model/configuration/MetadataOptions;

    const/4 v7, 0x0

    aput-object v4, v2, v7

    const/4 v4, 0x1

    aput-object v6, v2, v4

    const/4 v4, 0x2

    aput-object v11, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v8, v2, v3

    const/4 v3, 0x6

    aput-object v9, v2, v3

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const/16 v0, 0x8

    aput-object v1, v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmediabrowser/model/configuration/ServerConfiguration;->setMetadataOptions([Lmediabrowser/model/configuration/MetadataOptions;)V

    return-void
.end method


# virtual methods
.method public final getCertificatePath()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->CertificatePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecsUsed()[Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->CodecsUsed:[Ljava/lang/String;

    return-object v0
.end method

.method public final getContentTypes()[Lmediabrowser/model/dto/NameValuePair;
    .locals 1

    .line 497
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ContentTypes:[Lmediabrowser/model/dto/NameValuePair;

    return-object v0
.end method

.method public final getDashboardSourcePath()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DashboardSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCollectionsView()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DisplayCollectionsView:Z

    return v0
.end method

.method public final getDisplaySpecialsWithinSeasons()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DisplaySpecialsWithinSeasons:Z

    return v0
.end method

.method public final getEnableAnonymousUsageReporting()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableAnonymousUsageReporting:Z

    return v0
.end method

.method public final getEnableAutomaticRestart()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableAutomaticRestart:Z

    return v0
.end method

.method public final getEnableCaseSensitiveItemIds()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableCaseSensitiveItemIds:Z

    return v0
.end method

.method public final getEnableChannelView()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableChannelView:Z

    return v0
.end method

.method public final getEnableDashboardResponseCaching()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableDashboardResponseCaching:Z

    return v0
.end method

.method public final getEnableExternalContentInSuggestions()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableExternalContentInSuggestions:Z

    return v0
.end method

.method public final getEnableFolderView()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableFolderView:Z

    return v0
.end method

.method public final getEnableGroupingIntoCollections()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableGroupingIntoCollections:Z

    return v0
.end method

.method public final getEnableHttps()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableHttps:Z

    return v0
.end method

.method public final getEnableLocalizedGuids()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableLocalizedGuids:Z

    return v0
.end method

.method public final getEnableNormalizedItemByNameIds()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableNormalizedItemByNameIds:Z

    return v0
.end method

.method public final getEnableSeriesPresentationUniqueKey()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableSeriesPresentationUniqueKey:Z

    return v0
.end method

.method public final getEnableSimpleArtistDetection()Z
    .locals 1

    .line 656
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableSimpleArtistDetection:Z

    return v0
.end method

.method public final getEnableStandaloneMusicKeys()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableStandaloneMusicKeys:Z

    return v0
.end method

.method public final getEnableUPnP()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableUPnP:Z

    return v0
.end method

.method public final getHttpServerPortNumber()I
    .locals 1

    .line 67
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->HttpServerPortNumber:I

    return v0
.end method

.method public final getHttpsPortNumber()I
    .locals 1

    .line 82
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->HttpsPortNumber:I

    return v0
.end method

.method public final getImageExtractionTimeoutMs()I
    .locals 1

    .line 637
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageExtractionTimeoutMs:I

    return v0
.end method

.method public final getImageSavingConvention()Lmediabrowser/model/configuration/ImageSavingConvention;
    .locals 1

    .line 401
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageSavingConvention:Lmediabrowser/model/configuration/ImageSavingConvention;

    return-object v0
.end method

.method public final getIsPortAuthorized()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->IsPortAuthorized:Z

    return v0
.end method

.method public final getLastVersion()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LastVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryMonitorDelay()I
    .locals 1

    .line 355
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LibraryMonitorDelay:I

    return v0
.end method

.method public final getLocalNetworkAddresses()[Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LocalNetworkAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxResumePct()I
    .locals 1

    .line 323
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MaxResumePct:I

    return v0
.end method

.method public final getMetadataCountryCode()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadataNetworkPath()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataNetworkPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadataOptions()[Lmediabrowser/model/configuration/MetadataOptions;
    .locals 1

    .line 411
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataOptions:[Lmediabrowser/model/configuration/MetadataOptions;

    return-object v0
.end method

.method public final getMetadataPath()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMigrations()[Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->Migrations:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMinResumeDurationSeconds()I
    .locals 1

    .line 338
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MinResumeDurationSeconds:I

    return v0
.end method

.method public final getMinResumePct()I
    .locals 1

    .line 308
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MinResumePct:I

    return v0
.end method

.method public final getPathSubstitutions()[Lmediabrowser/model/configuration/PathSubstitution;
    .locals 1

    .line 647
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PathSubstitutions:[Lmediabrowser/model/configuration/PathSubstitution;

    return-object v0
.end method

.method public final getPreferredMetadataLanguage()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PreferredMetadataLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicHttpsPort()I
    .locals 1

    .line 52
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PublicHttpsPort:I

    return v0
.end method

.method public final getPublicPort()I
    .locals 1

    .line 37
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PublicPort:I

    return v0
.end method

.method public final getRemoteClientBitrateLimit()I
    .locals 1

    .line 507
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->RemoteClientBitrateLimit:I

    return v0
.end method

.method public final getSaveMetadataHidden()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SaveMetadataHidden:Z

    return v0
.end method

.method public final getSchemaVersion()I
    .locals 1

    .line 527
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SchemaVersion:I

    return v0
.end method

.method public final getSeasonZeroDisplayName()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SeasonZeroDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ServerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSharingExpirationDays()I
    .locals 1

    .line 517
    iget v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SharingExpirationDays:I

    return v0
.end method

.method public final getSkipDeserializationForAudio()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForAudio:Z

    return v0
.end method

.method public final getSkipDeserializationForBasicTypes()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForBasicTypes:Z

    return v0
.end method

.method public final getSkipDeserializationForPrograms()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForPrograms:Z

    return v0
.end method

.method public final getSortRemoveCharacters()[Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortRemoveCharacters:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortRemoveWords()[Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortRemoveWords:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortReplaceCharacters()[Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortReplaceCharacters:[Ljava/lang/String;

    return-object v0
.end method

.method public final getUICulture()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->UICulture:Ljava/lang/String;

    return-object v0
.end method

.method public final getWanDdns()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lmediabrowser/model/configuration/ServerConfiguration;->WanDdns:Ljava/lang/String;

    return-object v0
.end method

.method public final setCertificatePath(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->CertificatePath:Ljava/lang/String;

    return-void
.end method

.method public final setCodecsUsed([Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->CodecsUsed:[Ljava/lang/String;

    return-void
.end method

.method public final setContentTypes([Lmediabrowser/model/dto/NameValuePair;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ContentTypes:[Lmediabrowser/model/dto/NameValuePair;

    return-void
.end method

.method public final setDashboardSourcePath(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DashboardSourcePath:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayCollectionsView(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DisplayCollectionsView:Z

    return-void
.end method

.method public final setDisplaySpecialsWithinSeasons(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->DisplaySpecialsWithinSeasons:Z

    return-void
.end method

.method public final setEnableAnonymousUsageReporting(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableAnonymousUsageReporting:Z

    return-void
.end method

.method public final setEnableAutomaticRestart(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableAutomaticRestart:Z

    return-void
.end method

.method public final setEnableCaseSensitiveItemIds(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableCaseSensitiveItemIds:Z

    return-void
.end method

.method public final setEnableChannelView(Z)V
    .locals 0

    .line 622
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableChannelView:Z

    return-void
.end method

.method public final setEnableDashboardResponseCaching(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableDashboardResponseCaching:Z

    return-void
.end method

.method public final setEnableExternalContentInSuggestions(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableExternalContentInSuggestions:Z

    return-void
.end method

.method public final setEnableFolderView(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableFolderView:Z

    return-void
.end method

.method public final setEnableGroupingIntoCollections(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableGroupingIntoCollections:Z

    return-void
.end method

.method public final setEnableHttps(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableHttps:Z

    return-void
.end method

.method public final setEnableLocalizedGuids(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableLocalizedGuids:Z

    return-void
.end method

.method public final setEnableNormalizedItemByNameIds(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableNormalizedItemByNameIds:Z

    return-void
.end method

.method public final setEnableSeriesPresentationUniqueKey(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableSeriesPresentationUniqueKey:Z

    return-void
.end method

.method public final setEnableSimpleArtistDetection(Z)V
    .locals 0

    .line 660
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableSimpleArtistDetection:Z

    return-void
.end method

.method public final setEnableStandaloneMusicKeys(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableStandaloneMusicKeys:Z

    return-void
.end method

.method public final setEnableUPnP(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->EnableUPnP:Z

    return-void
.end method

.method public final setHttpServerPortNumber(I)V
    .locals 0

    .line 71
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->HttpServerPortNumber:I

    return-void
.end method

.method public final setHttpsPortNumber(I)V
    .locals 0

    .line 86
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->HttpsPortNumber:I

    return-void
.end method

.method public final setImageExtractionTimeoutMs(I)V
    .locals 0

    .line 641
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageExtractionTimeoutMs:I

    return-void
.end method

.method public final setImageSavingConvention(Lmediabrowser/model/configuration/ImageSavingConvention;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ImageSavingConvention:Lmediabrowser/model/configuration/ImageSavingConvention;

    return-void
.end method

.method public final setIsPortAuthorized(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->IsPortAuthorized:Z

    return-void
.end method

.method public final setLastVersion(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LastVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryMonitorDelay(I)V
    .locals 0

    .line 359
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LibraryMonitorDelay:I

    return-void
.end method

.method public final setLocalNetworkAddresses([Ljava/lang/String;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->LocalNetworkAddresses:[Ljava/lang/String;

    return-void
.end method

.method public final setMaxResumePct(I)V
    .locals 0

    .line 327
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MaxResumePct:I

    return-void
.end method

.method public final setMetadataCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataCountryCode:Ljava/lang/String;

    return-void
.end method

.method public final setMetadataNetworkPath(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataNetworkPath:Ljava/lang/String;

    return-void
.end method

.method public final setMetadataOptions([Lmediabrowser/model/configuration/MetadataOptions;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataOptions:[Lmediabrowser/model/configuration/MetadataOptions;

    return-void
.end method

.method public final setMetadataPath(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MetadataPath:Ljava/lang/String;

    return-void
.end method

.method public final setMigrations([Ljava/lang/String;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->Migrations:[Ljava/lang/String;

    return-void
.end method

.method public final setMinResumeDurationSeconds(I)V
    .locals 0

    .line 342
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MinResumeDurationSeconds:I

    return-void
.end method

.method public final setMinResumePct(I)V
    .locals 0

    .line 312
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->MinResumePct:I

    return-void
.end method

.method public final setPathSubstitutions([Lmediabrowser/model/configuration/PathSubstitution;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PathSubstitutions:[Lmediabrowser/model/configuration/PathSubstitution;

    return-void
.end method

.method public final setPreferredMetadataLanguage(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PreferredMetadataLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setPublicHttpsPort(I)V
    .locals 0

    .line 56
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PublicHttpsPort:I

    return-void
.end method

.method public final setPublicPort(I)V
    .locals 0

    .line 41
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->PublicPort:I

    return-void
.end method

.method public final setRemoteClientBitrateLimit(I)V
    .locals 0

    .line 511
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->RemoteClientBitrateLimit:I

    return-void
.end method

.method public final setSaveMetadataHidden(Z)V
    .locals 0

    .line 491
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SaveMetadataHidden:Z

    return-void
.end method

.method public final setSchemaVersion(I)V
    .locals 0

    .line 531
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SchemaVersion:I

    return-void
.end method

.method public final setSeasonZeroDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SeasonZeroDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setServerName(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->ServerName:Ljava/lang/String;

    return-void
.end method

.method public final setSharingExpirationDays(I)V
    .locals 0

    .line 521
    iput p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SharingExpirationDays:I

    return-void
.end method

.method public final setSkipDeserializationForAudio(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForAudio:Z

    return-void
.end method

.method public final setSkipDeserializationForBasicTypes(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForBasicTypes:Z

    return-void
.end method

.method public final setSkipDeserializationForPrograms(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SkipDeserializationForPrograms:Z

    return-void
.end method

.method public final setSortRemoveCharacters([Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortRemoveCharacters:[Ljava/lang/String;

    return-void
.end method

.method public final setSortRemoveWords([Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortRemoveWords:[Ljava/lang/String;

    return-void
.end method

.method public final setSortReplaceCharacters([Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->SortReplaceCharacters:[Ljava/lang/String;

    return-void
.end method

.method public final setUICulture(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->UICulture:Ljava/lang/String;

    return-void
.end method

.method public final setWanDdns(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lmediabrowser/model/configuration/ServerConfiguration;->WanDdns:Ljava/lang/String;

    return-void
.end method

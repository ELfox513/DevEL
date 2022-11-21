.class public final synthetic Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0
    .param p2    # Landroid/content/ComponentName;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic build()Landroid/app/job/JobInfo;
.end method

.method public native synthetic setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .param p1    # Landroid/os/PersistableBundle;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public native synthetic setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setPersisted(Z)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
.end method

.method public native synthetic setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
.end method

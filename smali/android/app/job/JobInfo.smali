.class public synthetic Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getExtras()Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic getId()I
.end method

.method public native synthetic getService()Landroid/content/ComponentName;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

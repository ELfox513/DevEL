.class public synthetic Landroid/app/job/JobScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract synthetic cancel(I)V
.end method

.method public abstract synthetic getAllPendingJobs()Ljava/util/List;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic schedule(Landroid/app/job/JobInfo;)I
    .param p1    # Landroid/app/job/JobInfo;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

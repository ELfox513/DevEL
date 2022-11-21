.class public final Lr4/mg0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/mg0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/os/ParcelFileDescriptor;

.field public b:Landroid/os/Parcelable;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ng0;

    invoke-direct {v0}, Lr4/ng0;-><init>()V

    sput-object v0, Lr4/mg0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/mg0;->a:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/mg0;->b:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/mg0;->d:Z

    return-void
.end method


# virtual methods
.method public final X0(Landroid/os/Parcelable$Creator;)Ly3/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ly3/d;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/mg0;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/mg0;->a:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "File descriptor is empty, returning null."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v2}, Lc4/m;->a(Ljava/io/Closeable;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, v3, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Lr4/mg0;->b:Landroid/os/Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-boolean v4, p0, Lr4/mg0;->d:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Could not read from parcel file descriptor"

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lc4/m;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_0
    invoke-static {v2}, Lc4/m;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lr4/mg0;->b:Landroid/os/Parcelable;

    check-cast p1, Ly3/d;

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget-object v0, p0, Lr4/mg0;->a:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lr4/mg0;->b:Landroid/os/Parcelable;

    invoke-interface {v2, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v4, Lr4/qm0;->a:Lr4/i83;

    new-instance v6, Lr4/lg0;

    invoke-direct {v6, v5, v2}, Lr4/lg0;-><init>(Ljava/io/OutputStream;[B)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    aget-object v0, v3, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v0

    :goto_0
    const-string v3, "Error transporting the ad response"

    invoke-static {v3, v2}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v3

    const-string v4, "LargeParcelTeleporter.pipeData.2"

    invoke-virtual {v3, v2, v4}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v5}, Lc4/m;->a(Ljava/io/Closeable;)V

    :goto_1
    iput-object v0, p0, Lr4/mg0;->a:Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_0
    :goto_2
    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x2

    iget-object v3, p0, Lr4/mg0;->a:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1, v2, v3, p2, v1}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method

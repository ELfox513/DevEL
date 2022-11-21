.class public Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg7/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj7/h;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg7/a$a;

    invoke-direct {v0}, Lg7/a$a;-><init>()V

    sput-object v0, Lg7/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg7/a;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg7/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lg7/a;->d:Z

    const-class v0, Lj7/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lj7/h;

    iput-object p1, p0, Lg7/a;->b:Lj7/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lg7/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lg7/a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj7/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg7/a;->d:Z

    iput-object p1, p0, Lg7/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iput-object p1, p0, Lg7/a;->b:Lj7/h;

    return-void
.end method

.method public static h(Ljava/util/List;)[Lk7/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg7/a;",
            ">;)[",
            "Lk7/k;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lk7/k;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg7/a;

    invoke-virtual {v2}, Lg7/a;->a()Lk7/k;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg7/a;

    invoke-virtual {v6}, Lg7/a;->a()Lk7/k;

    move-result-object v6

    if-nez v5, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg7/a;

    invoke-virtual {v7}, Lg7/a;->u()Z

    move-result v7

    if-eqz v7, :cond_1

    aput-object v6, v0, v1

    aput-object v2, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static j()Lg7/a;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg7/a;

    new-instance v2, Lj7/a;

    invoke-direct {v2}, Lj7/a;-><init>()V

    invoke-direct {v1, v0, v2}, Lg7/a;-><init>(Ljava/lang/String;Lj7/a;)V

    invoke-static {}, Lg7/a;->z()Z

    move-result v0

    invoke-virtual {v1, v0}, Lg7/a;->x(Z)V

    return-object v1
.end method

.method public static z()Z
    .locals 5

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v0

    invoke-virtual {v0}, Lz6/a;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0}, Lz6/a;->B()F

    move-result v0

    float-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Lk7/k;
    .locals 2

    invoke-static {}, Lk7/k;->X()Lk7/k$c;

    move-result-object v0

    iget-object v1, p0, Lg7/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk7/k$c;->S(Ljava/lang/String;)Lk7/k$c;

    move-result-object v0

    iget-boolean v1, p0, Lg7/a;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lk7/l;->d:Lk7/l;

    invoke-virtual {v0, v1}, Lk7/k$c;->Q(Lk7/l;)Lk7/k$c;

    :cond_0
    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/k;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lj7/h;
    .locals 1

    iget-object v0, p0, Lg7/a;->b:Lj7/h;

    return-object v0
.end method

.method public n()Z
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lg7/a;->b:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v2

    invoke-virtual {v2}, Lz6/a;->y()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lg7/a;->d:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lg7/a;->d:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg7/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lg7/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg7/a;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg7/a;->b:Lj7/h;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lg7/a;->d:Z

    return-void
.end method

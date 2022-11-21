.class public final Lh4/w;
.super Lk4/i;
.source "SourceFile"

# interfaces
.implements Lh4/l;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lh4/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/v;

    invoke-direct {v0}, Lh4/v;-><init>()V

    sput-object v0, Lh4/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lk4/i;-><init>()V

    iput p1, p0, Lh4/w;->a:I

    iput-object p2, p0, Lh4/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lh4/w;->d:Ljava/lang/String;

    iput-object p4, p0, Lh4/w;->k:Ljava/lang/String;

    return-void
.end method

.method public static X0(Lh4/l;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lh4/l;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/l;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/l;->w()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lh4/l;->r()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static Y0(Lh4/l;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lh4/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lh4/l;

    invoke-interface {p1}, Lh4/l;->M()I

    move-result v2

    invoke-interface {p0}, Lh4/l;->M()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lh4/l;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/l;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lh4/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lh4/l;->r()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lh4/l;->r()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static Z0(Lh4/l;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/l;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FriendStatus"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    invoke-interface {p0}, Lh4/l;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lh4/l;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Nickname"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    :cond_0
    invoke-interface {p0}, Lh4/l;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lh4/l;->w()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvitationNickname"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    :cond_1
    invoke-interface {p0}, Lh4/l;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lh4/l;->w()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NicknameAbuseReportToken"

    invoke-virtual {v0, v1, p0}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    :cond_2
    invoke-virtual {v0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final M()I
    .locals 1

    iget v0, p0, Lh4/w;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lh4/w;->Y0(Lh4/l;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lh4/w;->X0(Lh4/l;)I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/w;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lh4/w;->Z0(Lh4/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lh4/w;->M()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lh4/w;->b:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lh4/w;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lh4/w;->k:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method

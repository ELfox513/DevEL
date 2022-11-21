.class public final La5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, La5/u;->c:I

    const/4 p2, 0x0

    iput p2, p0, La5/u;->d:I

    iput p2, p0, La5/u;->e:I

    iput p2, p0, La5/u;->f:I

    iput p2, p0, La5/u;->g:I

    iput p1, p0, La5/u;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, La5/u;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, La5/u;->b:I

    const-string v2, "popupLocationInfo.gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, La5/u;->c:I

    const-string v2, "popupLocationInfo.displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, La5/u;->d:I

    const-string v2, "popupLocationInfo.left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, La5/u;->e:I

    const-string v2, "popupLocationInfo.top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, La5/u;->f:I

    const-string v2, "popupLocationInfo.right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, La5/u;->g:I

    const-string v2, "popupLocationInfo.bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

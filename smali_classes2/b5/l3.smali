.class public final Lb5/l3;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/m3;",
        "Lb5/l3;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/m3;->v()Lb5/m3;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/z2;)V
    .locals 0

    invoke-static {}, Lb5/m3;->v()Lb5/m3;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/String;)Lb5/l3;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/m3;

    invoke-static {v0, p1}, Lb5/m3;->x(Lb5/m3;Ljava/lang/String;)V

    return-object p0
.end method

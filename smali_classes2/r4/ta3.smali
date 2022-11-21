.class public final Lr4/ta3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/xd3;",
        "Lr4/ud3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/ua3;


# direct methods
.method public constructor <init>(Lr4/ua3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/ta3;->b:Lr4/ua3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final g(Lr4/xd3;)Lr4/ud3;
    .locals 2

    invoke-static {}, Lr4/ud3;->J()Lr4/td3;

    move-result-object v0

    invoke-virtual {p0}, Lr4/xd3;->C()Lr4/be3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/td3;->x(Lr4/be3;)Lr4/td3;

    invoke-virtual {p0}, Lr4/xd3;->D()I

    move-result p0

    invoke-static {p0}, Lr4/bk3;->a(I)[B

    move-result-object p0

    invoke-static {p0}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr4/td3;->z(Lr4/ll3;)Lr4/td3;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lr4/td3;->v(I)Lr4/td3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/ud3;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/xd3;

    invoke-virtual {p0, p1}, Lr4/ta3;->f(Lr4/xd3;)V

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/xd3;->E(Lr4/ll3;Lr4/bm3;)Lr4/xd3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/xd3;

    invoke-static {p1}, Lr4/ta3;->g(Lr4/xd3;)Lr4/ud3;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lr4/xd3;)V
    .locals 1

    invoke-virtual {p1}, Lr4/xd3;->D()I

    move-result v0

    invoke-static {v0}, Lr4/dk3;->a(I)V

    iget-object v0, p0, Lr4/ta3;->b:Lr4/ua3;

    invoke-virtual {p1}, Lr4/xd3;->C()Lr4/be3;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ua3;->k(Lr4/ua3;Lr4/be3;)V

    return-void
.end method

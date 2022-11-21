.class public final Lr4/h01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/xt2;

.field public final b:Lr4/ls1;

.field public final c:Lr4/bp2;


# direct methods
.method public constructor <init>(Lr4/ls1;Lr4/bp2;Lr4/xt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lr4/h01;->a:Lr4/xt2;

    iput-object p1, p0, Lr4/h01;->b:Lr4/ls1;

    iput-object p2, p0, Lr4/h01;->c:Lr4/bp2;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "u"

    return-object p0

    :cond_0
    const-string p0, "ac"

    return-object p0

    :cond_1
    const-string p0, "cb"

    return-object p0

    :cond_2
    const-string p0, "cc"

    return-object p0

    :cond_3
    const-string p0, "bb"

    return-object p0

    :cond_4
    const-string p0, "h"

    return-object p0
.end method


# virtual methods
.method public final a(JI)V
    .locals 7

    sget-object v0, Lr4/rz;->i6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/h01;->a:Lr4/xt2;

    invoke-static {v5}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v5

    iget-object v6, p0, Lr4/h01;->c:Lr4/bp2;

    iget-object v6, v6, Lr4/bp2;->b:Lr4/ap2;

    iget-object v6, v6, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v5, v6}, Lr4/wt2;->h(Lr4/so2;)Lr4/wt2;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {v5, v3, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {p3}, Lr4/h01;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v5}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/h01;->b:Lr4/ls1;

    invoke-virtual {v0}, Lr4/ls1;->d()Lr4/ks1;

    move-result-object v0

    iget-object v6, p0, Lr4/h01;->c:Lr4/bp2;

    iget-object v6, v6, Lr4/bp2;->b:Lr4/ap2;

    iget-object v6, v6, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v0, v6}, Lr4/ks1;->b(Lr4/so2;)Lr4/ks1;

    const-string v6, "action"

    invoke-virtual {v0, v6, v5}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {v0, v3, v2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {p3}, Lr4/h01;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.class public final Lr4/q72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/vg1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/vg1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/q72;->a:Lr4/vg1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Landroid/view/View;Lr4/m72;)Ljava/lang/Object;
    .locals 3

    new-instance p3, Lr4/o72;

    sget-object v0, Lr4/n72;->a:Lr4/dh1;

    invoke-direct {p3, p0, v0}, Lr4/o72;-><init>(Lr4/q72;Lr4/dh1;)V

    iget-object v0, p0, Lr4/q72;->a:Lr4/vg1;

    new-instance v1, Lr4/x31;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lr4/vg1;->c(Lr4/x31;Lr4/bg1;)Lr4/yf1;

    move-result-object p1

    new-instance p2, Lr4/p72;

    invoke-direct {p2, p0, p1}, Lr4/p72;-><init>(Lr4/q72;Lr4/yf1;)V

    invoke-virtual {p4, p2}, Lr4/m72;->d(Lz2/f;)V

    invoke-virtual {p1}, Lr4/yf1;->h()Lr4/xf1;

    move-result-object p1

    return-object p1
.end method

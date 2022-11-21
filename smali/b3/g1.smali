.class public final Lb3/g1;
.super Lb3/d0;
.source "SourceFile"


# instance fields
.field public final c:Lr4/hm0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lb3/d0;-><init>()V

    new-instance p2, Lr4/hm0;

    invoke-direct {p2, p1}, Lr4/hm0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lb3/g1;->c:Lr4/hm0;

    iput-object p3, p0, Lb3/g1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lb3/g1;->c:Lr4/hm0;

    iget-object v1, p0, Lb3/g1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/hm0;->q(Ljava/lang/String;)V

    return-void
.end method

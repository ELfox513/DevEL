.class public final synthetic Lr4/zl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/hm1;

.field public final b:Lr4/yt;

.field public final c:Lr4/no2;

.field public final d:Lr4/so2;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/hm1;Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zl1;->a:Lr4/hm1;

    iput-object p2, p0, Lr4/zl1;->b:Lr4/yt;

    iput-object p3, p0, Lr4/zl1;->c:Lr4/no2;

    iput-object p4, p0, Lr4/zl1;->d:Lr4/so2;

    iput-object p5, p0, Lr4/zl1;->e:Ljava/lang/String;

    iput-object p6, p0, Lr4/zl1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 7

    iget-object v0, p0, Lr4/zl1;->a:Lr4/hm1;

    iget-object v1, p0, Lr4/zl1;->b:Lr4/yt;

    iget-object v2, p0, Lr4/zl1;->c:Lr4/no2;

    iget-object v3, p0, Lr4/zl1;->d:Lr4/so2;

    iget-object v4, p0, Lr4/zl1;->e:Ljava/lang/String;

    iget-object v5, p0, Lr4/zl1;->f:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lr4/hm1;->h(Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.class public final Lr4/ku2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xt2;


# instance fields
.field public final a:Lr4/hu2;

.field public final b:Lr4/fu2;


# direct methods
.method public constructor <init>(Lr4/hu2;Lr4/fu2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ku2;->a:Lr4/hu2;

    iput-object p2, p0, Lr4/ku2;->b:Lr4/fu2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/wt2;)V
    .locals 0

    return-void
.end method

.method public final b(Lr4/wt2;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/ku2;->a:Lr4/hu2;

    invoke-virtual {p1}, Lr4/wt2;->j()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lr4/ku2;->b:Lr4/fu2;

    invoke-virtual {v1, p1}, Lr4/fu2;->a(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lr4/hu2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final Lr4/qs1;
.super Lr4/ss1;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final g:Lr4/fu2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/hm0;Lr4/fu2;Lr4/hu2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lr4/ss1;-><init>(Ljava/util/concurrent/Executor;Lr4/hm0;Lr4/hu2;)V

    iput-object p3, p0, Lr4/qs1;->g:Lr4/fu2;

    iget-object p1, p0, Lr4/ss1;->b:Ljava/util/Map;

    invoke-virtual {p3, p1}, Lr4/fu2;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lr4/ss1;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

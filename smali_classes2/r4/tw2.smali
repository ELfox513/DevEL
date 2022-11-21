.class public abstract Lr4/tw2;
.super Lr4/uw2;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lorg/json/JSONObject;

.field public final e:J


# direct methods
.method public constructor <init>(Lr4/mw2;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mw2;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    const/4 p6, 0x0

    invoke-direct {p0, p1, p6}, Lr4/uw2;-><init>(Lr4/mw2;[B)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lr4/tw2;->c:Ljava/util/HashSet;

    iput-object p3, p0, Lr4/tw2;->d:Lorg/json/JSONObject;

    iput-wide p4, p0, Lr4/tw2;->e:J

    return-void
.end method

.class public final synthetic Lr4/l42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/m42;

.field public final b:Lr4/h83;

.field public final c:Lr4/h83;

.field public final d:Lr4/bp2;

.field public final e:Lr4/no2;

.field public final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/m42;Lr4/h83;Lr4/h83;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l42;->a:Lr4/m42;

    iput-object p2, p0, Lr4/l42;->b:Lr4/h83;

    iput-object p3, p0, Lr4/l42;->c:Lr4/h83;

    iput-object p4, p0, Lr4/l42;->d:Lr4/bp2;

    iput-object p5, p0, Lr4/l42;->e:Lr4/no2;

    iput-object p6, p0, Lr4/l42;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lr4/l42;->a:Lr4/m42;

    iget-object v1, p0, Lr4/l42;->b:Lr4/h83;

    iget-object v2, p0, Lr4/l42;->c:Lr4/h83;

    iget-object v3, p0, Lr4/l42;->d:Lr4/bp2;

    iget-object v4, p0, Lr4/l42;->e:Lr4/no2;

    iget-object v5, p0, Lr4/l42;->f:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lr4/m42;->c(Lr4/h83;Lr4/h83;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/zi1;

    move-result-object v0

    return-object v0
.end method

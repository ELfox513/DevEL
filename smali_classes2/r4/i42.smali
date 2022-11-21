.class public final synthetic Lr4/i42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/m42;

.field public final b:Lr4/bp2;

.field public final c:Lr4/no2;


# direct methods
.method public constructor <init>(Lr4/m42;Lr4/bp2;Lr4/no2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i42;->a:Lr4/m42;

    iput-object p2, p0, Lr4/i42;->b:Lr4/bp2;

    iput-object p3, p0, Lr4/i42;->c:Lr4/no2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/i42;->a:Lr4/m42;

    iget-object v1, p0, Lr4/i42;->b:Lr4/bp2;

    iget-object v2, p0, Lr4/i42;->c:Lr4/no2;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, p1}, Lr4/m42;->e(Lr4/bp2;Lr4/no2;Lorg/json/JSONArray;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

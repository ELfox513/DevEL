.class public final synthetic Lr4/j42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/m42;

.field public final b:Lr4/fo1;


# direct methods
.method public constructor <init>(Lr4/m42;Lr4/fo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j42;->a:Lr4/m42;

    iput-object p2, p0, Lr4/j42;->b:Lr4/fo1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/j42;->a:Lr4/m42;

    iget-object v1, p0, Lr4/j42;->b:Lr4/fo1;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lr4/m42;->d(Lr4/fo1;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

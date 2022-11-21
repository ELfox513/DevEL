.class public final Lr4/fi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lr4/fo1;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lr4/fo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fi1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lr4/fi1;->b:Lr4/fo1;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lr4/fi1;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Lr4/fo1;
    .locals 1

    iget-object v0, p0, Lr4/fi1;->b:Lr4/fo1;

    return-object v0
.end method

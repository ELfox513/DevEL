.class public final Lr4/gz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lr4/rg0;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lr4/rg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gz1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lr4/gz1;->b:Lr4/rg0;

    return-void
.end method

.method public static synthetic a(Lr4/gz1;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lr4/gz1;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic b(Lr4/gz1;)Lr4/rg0;
    .locals 0

    iget-object p0, p0, Lr4/gz1;->b:Lr4/rg0;

    return-object p0
.end method

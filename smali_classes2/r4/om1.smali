.class public final synthetic Lr4/om1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/an1;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/an1;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/om1;->a:Lr4/an1;

    iput-object p2, p0, Lr4/om1;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/om1;->a:Lr4/an1;

    iget-object v1, p0, Lr4/om1;->b:Lorg/json/JSONObject;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, v1, p1}, Lr4/an1;->f(Lorg/json/JSONObject;Lr4/cs0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

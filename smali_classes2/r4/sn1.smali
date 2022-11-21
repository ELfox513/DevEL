.class public final synthetic Lr4/sn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/fo1;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/fo1;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sn1;->a:Lr4/fo1;

    iput-object p2, p0, Lr4/sn1;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/sn1;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/sn1;->a:Lr4/fo1;

    iget-object v1, p0, Lr4/sn1;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/sn1;->c:Lorg/json/JSONObject;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, v1, v2, p1}, Lr4/fo1;->j(Ljava/lang/String;Lorg/json/JSONObject;Lr4/cs0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

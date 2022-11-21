.class public final synthetic Lr4/py1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# static fields
.field public static final a:Lr4/ps2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/py1;

    invoke-direct {v0}, Lr4/py1;-><init>()V

    sput-object v0, Lr4/py1;->a:Lr4/ps2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "Ad request signals:"

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object p1
.end method

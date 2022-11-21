.class public final synthetic Lh3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/y;

    invoke-direct {v0}, Lh3/y;-><init>()V

    sput-object v0, Lh3/y;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    sget-object v0, Lh3/g0;->J:Ljava/util/List;

    const-string v0, "nas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lr4/z90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/v90;


# static fields
.field public static final a:Lr4/v90;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/z90;

    invoke-direct {v0}, Lr4/z90;-><init>()V

    sput-object v0, Lr4/z90;->a:Lr4/v90;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lr4/ba0;->a(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

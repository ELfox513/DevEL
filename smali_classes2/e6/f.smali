.class public Le6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx5/q;


# direct methods
.method public constructor <init>(Lx5/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/f;->a:Lx5/q;

    return-void
.end method

.method public static a(I)Le6/g;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance p0, Le6/b;

    invoke-direct {p0}, Le6/b;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Le6/h;

    invoke-direct {p0}, Le6/h;-><init>()V

    return-object p0
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)Lf6/e;
    .locals 2

    const-string v0, "settings_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Le6/f;->a(I)Le6/g;

    move-result-object v0

    iget-object v1, p0, Le6/f;->a:Lx5/q;

    invoke-interface {v0, v1, p1}, Le6/g;->a(Lx5/q;Lorg/json/JSONObject;)Lf6/e;

    move-result-object p1

    return-object p1
.end method

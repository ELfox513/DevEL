.class public final synthetic Lh3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/og0;


# direct methods
.method public constructor <init>(Lr4/og0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/g;->a:Lr4/og0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 4

    iget-object v0, p0, Lh3/g;->a:Lr4/og0;

    check-cast p1, Ljava/io/InputStream;

    new-instance v1, Lh3/j;

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lh3/j;-><init>(Landroid/util/JsonReader;)V

    iget-object p1, v0, Lr4/og0;->a:Landroid/os/Bundle;

    :try_start_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb3/k2;->S(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lh3/j;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "{}"

    iput-object p1, v1, Lh3/j;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

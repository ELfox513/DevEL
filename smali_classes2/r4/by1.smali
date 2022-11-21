.class public final synthetic Lr4/by1;
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

    iput-object p1, p0, Lr4/by1;->a:Lr4/og0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/by1;->a:Lr4/og0;

    check-cast p1, Ljava/io/InputStream;

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lr4/u53;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    sget-object v2, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, v0, Lr4/og0;->u:Ljava/lang/String;

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

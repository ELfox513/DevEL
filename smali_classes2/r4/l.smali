.class public final Lr4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ez2;


# instance fields
.field public final synthetic a:Lr4/dx2;


# direct methods
.method public constructor <init>(Lr4/n;Lr4/dx2;)V
    .locals 0

    iput-object p2, p0, Lr4/l;->a:Lr4/dx2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/l;->a:Lr4/dx2;

    invoke-virtual {v0, p1}, Lr4/dx2;->a(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

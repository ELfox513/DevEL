.class public Lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lz4/r1;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lz4/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lz4/b0;->b()Lz4/b0;

    move-result-object v0

    sput-object v0, Lz4/e;->a:Lz4/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

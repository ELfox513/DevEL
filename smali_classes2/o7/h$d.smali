.class public final Lo7/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo7/h$a;)V
    .locals 0

    invoke-direct {p0}, Lo7/h$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

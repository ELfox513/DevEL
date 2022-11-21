.class public final Ll1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public varargs constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/a;->a:[B

    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 3

    iget-object v0, p0, Ll1/a;->a:[B

    iget v1, p0, Ll1/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ll1/a;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

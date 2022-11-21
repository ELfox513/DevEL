.class public final Lu/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lu/d$c;


# direct methods
.method public constructor <init>([Lu/d$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/d$b;->a:[Lu/d$c;

    return-void
.end method


# virtual methods
.method public a()[Lu/d$c;
    .locals 1

    iget-object v0, p0, Lu/d$b;->a:[Lu/d$c;

    return-object v0
.end method

.class public final Li2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Li2/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/j;

    invoke-direct {v0}, Li2/j;-><init>()V

    sput-object v0, Li2/j$a;->a:Li2/j;

    return-void
.end method

.method public static synthetic a()Li2/j;
    .locals 1

    sget-object v0, Li2/j$a;->a:Li2/j;

    return-object v0
.end method

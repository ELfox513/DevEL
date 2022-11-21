.class public final Lp2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lp2/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp2/h;

    invoke-direct {v0}, Lp2/h;-><init>()V

    sput-object v0, Lp2/h$a;->a:Lp2/h;

    return-void
.end method

.method public static synthetic a()Lp2/h;
    .locals 1

    sget-object v0, Lp2/h$a;->a:Lp2/h;

    return-object v0
.end method

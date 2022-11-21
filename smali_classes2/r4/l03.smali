.class public final Lr4/l03;
.super Lr4/k03;
.source "SourceFile"


# static fields
.field public static final b:Lr4/l03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/l03;

    invoke-direct {v0}, Lr4/l03;-><init>()V

    sput-object v0, Lr4/l03;->b:Lr4/l03;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lr4/k03;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

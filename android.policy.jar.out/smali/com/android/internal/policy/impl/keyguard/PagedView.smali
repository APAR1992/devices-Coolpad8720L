.class public abstract Lcom/android/internal/policy/impl/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = true

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.01f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    .line 111
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 125
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 138
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 148
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountX:I

    .line 149
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountY:I

    .line 150
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    .line 152
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 161
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    .line 165
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 172
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 185
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 188
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 195
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 196
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 203
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 208
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 209
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 210
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 211
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 212
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 213
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 214
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 218
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 220
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 225
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 230
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 232
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 235
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 236
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    .line 237
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 238
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 241
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 242
    const v2, 0x3d0f5c29

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 244
    const/high16 v2, 0x4282

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 245
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 247
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 248
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 249
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 255
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 1927
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 272
    sget-object v2, Lcom/android/internal/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 275
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 277
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1050074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 283
    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 286
    invoke-virtual {p0, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->init()V

    .line 288
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/PagedView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/PagedView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PagedView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/PagedView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1649
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1652
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .parameter "dragView"

    .prologue
    .line 2324
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2266
    .local v0, config:Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2268
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2270
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2272
    .local v3, vel:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2273
    .local v2, upVec:Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2275
    .local v1, theta:F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2279
    .end local v1           #theta:F
    .end local v2           #upVec:Landroid/graphics/PointF;
    .end local v3           #vel:Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 2470
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2471
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2472
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2473
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2474
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2476
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2477
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2478
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2480
    .end local v0           #parent:Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1039
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1041
    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2486
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2488
    .local v3, dragView:Landroid/view/View;
    const/4 v7, 0x0

    .line 2489
    .local v7, toScale:F
    const/4 v6, 0x0

    .line 2492
    .local v6, toAlpha:F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2493
    .local v2, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2494
    .local v4, motionAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x4000

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2495
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2498
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2501
    .local v0, alphaAnim:Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2502
    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2504
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2508
    .local v5, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2509
    .local v1, anim:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2510
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2511
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2516
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2518
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2519
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2134
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1664
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1665
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1669
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1670
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1671
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1672
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1673
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1674
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1675
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1678
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1240
    sub-float/2addr p1, v1

    .line 1241
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1659
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->endReordering()V

    .line 1611
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1612
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1613
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1614
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2011
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 2012
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2015
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2016
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2018
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2019
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2026
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2027
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2028
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2029
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2030
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2031
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2034
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2035
    .local v7, offset:F
    div-int v2, v9, v6

    .line 2036
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2037
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2038
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2039
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2040
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2046
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2043
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2044
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1249
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1251
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1254
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1255
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1258
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1259
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1260
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1261
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    .line 1266
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1263
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1264
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 971
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 973
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 974
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 975
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 977
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 978
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 979
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2051
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2052
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2053
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2054
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2057
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2063
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2065
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .parameter "isReordering"
    .parameter "range"

    .prologue
    .line 834
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1967
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScrollHelper()Z

    .line 582
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 553
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 560
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 576
    :goto_0
    return v0

    .line 562
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    .line 563
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 564
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 569
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageEndMoving()V

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 576
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1272
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1274
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1278
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1279
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1282
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1283
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1284
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1285
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    .line 1290
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1287
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1288
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1168
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1169
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1177
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1178
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1182
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1183
    .local v6, y:F
    float-to-int v10, v2

    float-to-int v11, v6

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1187
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v10, :cond_0

    .line 1189
    :cond_2
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1190
    .local v3, xDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1192
    .local v7, yDiff:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1193
    .local v1, touchSlop:I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1194
    .local v5, xPaged:Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1195
    .local v4, xMoved:Z
    :goto_2
    if-le v7, v1, :cond_3

    move v8, v9

    .line 1197
    .local v8, yMoved:Z
    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v8, :cond_0

    .line 1198
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_0

    .line 1200
    :goto_3
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1201
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1202
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1203
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_0

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_5
    move v5, v8

    .line 1193
    goto :goto_1

    .restart local v5       #xPaged:Z
    :cond_6
    move v4, v8

    .line 1194
    goto :goto_2

    .line 1198
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_7
    if-eqz v4, :cond_0

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 884
    .local v2, halfScreenSize:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 886
    .local v7, screenCenter:I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 889
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 890
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->screenScrolled(I)V

    .line 891
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 895
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 896
    .local v5, pageCount:I
    if-lez v5, :cond_7

    .line 897
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 898
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 899
    .local v4, leftScreen:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 900
    .local v6, rightScreen:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 901
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    .line 903
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 908
    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 909
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 910
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 908
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 911
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 913
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 917
    .end local v8           #v:Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 918
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 921
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 925
    .end local v0           #drawingTime:J
    .end local v3           #i:I
    .end local v4           #leftScreen:I
    .end local v6           #rightScreen:I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 954
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 965
    :goto_0
    return v0

    .line 959
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 965
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1761
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1762
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1763
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2184
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2189
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    .line 2195
    .local v0, onCompleteRunnable:Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2196
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2202
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2205
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1936
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    .line 1937
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1938
    return-void

    .line 1936
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 993
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 994
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 996
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 997
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1007
    :cond_0
    return-void

    .line 1000
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1004
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1005
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1218
    .local v0, halfScreenSize:I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1219
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1221
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .parameter "relativeOffset"

    .prologue
    .line 1690
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1693
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1694
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1695
    .local v2, left:I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1696
    .local v3, right:I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1700
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v3           #right:I
    :goto_1
    return v1

    .line 1693
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v3       #right:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1700
    .end local v2           #left:I
    .end local v3           #right:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 785
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v2

    .line 787
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 790
    .local v0, childOffsets:[I
    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 791
    aget v2, v0, p1

    goto :goto_0

    .line 787
    .end local v0           #childOffsets:[I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    .line 793
    .restart local v0       #childOffsets:[I
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 797
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 798
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 800
    :cond_4
    if-eqz v0, :cond_0

    .line 801
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1707
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 1708
    .local v1, minWidth:I
    if-le v1, v0, :cond_0

    .end local v1           #minWidth:I
    :goto_0
    return v1

    .restart local v1       #minWidth:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1212
    const/high16 v0, 0x3f80

    return v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1876
    const/4 v2, -0x1

    .line 1877
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1878
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1879
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1880
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1881
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1886
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1880
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1886
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1724
    const v7, 0x7fffffff

    .line 1725
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1726
    .local v8, minDistanceFromScreenCenterIndex:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1727
    .local v9, screenCenter:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1728
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1729
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1730
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1731
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1732
    .local v4, halfChildWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1733
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1734
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_0

    .line 1735
    move v7, v3

    .line 1736
    move v8, v5

    .line 1728
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1739
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_1
    return v8
.end method

.method getPageNearestToPoint(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 1712
    const/4 v1, 0x0

    .line 1713
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1714
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1720
    .end local v1           #index:I
    :goto_1
    return v1

    .line 1717
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1720
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 808
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 819
    :cond_1
    :goto_0
    return v0

    .line 810
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 811
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    .line 813
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 814
    .local v1, padding:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 816
    .local v0, offset:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 827
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 828
    .local v2, minWidth:I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 829
    .local v0, maxWidth:I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_0
    move v0, v1

    .line 828
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1227
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1228
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1231
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f80

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1232
    .local v2, scrollProgress:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1234
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .parameter "range"

    .prologue
    const/4 v0, 0x0

    .line 838
    aput v0, p1, v0

    .line 839
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 873
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2007
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .parameter "immediately"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1971
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1974
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1977
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1978
    if-eqz p1, :cond_2

    .line 1979
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1982
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1984
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 420
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 296
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 297
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 300
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    .line 306
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 309
    const/high16 v1, 0x43fa

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 310
    const/high16 v1, 0x437a

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    .line 311
    const v1, 0x44bb8000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    .line 312
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 313
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 767
    .local v0, count:I
    if-nez v0, :cond_1

    .line 768
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 769
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 770
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 782
    :cond_0
    return-void

    .line 774
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 775
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 776
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 777
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 778
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 779
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 780
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .parameter "testTouchState"

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2176
    .local v0, state:Z
    if-eqz p1, :cond_0

    .line 2177
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2179
    :cond_0
    return v0

    .line 2177
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1924
    const/4 v0, 0x0

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1300
    const/high16 v0, 0x3f80

    .line 1301
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1302
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 473
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .parameter "whichPage"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 467
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 756
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 763
    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2137
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2138
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040348

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2141
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2145
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2147
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 2148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2146
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2151
    :cond_3
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12
    .parameter "vel"

    .prologue
    .line 2416
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2423
    .local v4, startTime:J
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;J)V

    .line 2444
    .local v9, tInterpolator:Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2445
    .local v3, from:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2446
    .local v1, dragView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2447
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2448
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2451
    .local v0, updateCb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2454
    .local v8, onAnimationEndRunnable:Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2455
    .local v7, mDropAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2456
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2457
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2458
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2459
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2464
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2465
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2466
    return-void

    .line 2457
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1644
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1626
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1627
    const/4 v1, 0x0

    .line 1628
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1633
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1634
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1635
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    .line 1639
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1630
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1631
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1637
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1621
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2569
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 2536
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2537
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2538
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2539
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2540
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2543
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 2524
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2525
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2526
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2527
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2529
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2530
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2532
    :cond_1
    return-void

    .line 2525
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 710
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 717
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 718
    .local v7, offsetX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 721
    .local v8, offsetY:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 723
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 724
    .local v3, childLeft:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 725
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 727
    .local v4, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 729
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 732
    .local v2, childHeight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 734
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 724
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 738
    .end local v0           #child:Landroid/view/View;
    .end local v4           #childTop:I
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 739
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 741
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 742
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 30
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    if-nez v27, :cond_1

    .line 591
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 701
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 598
    .local v18, parent:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 599
    .local v25, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 600
    .local v26, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 601
    .local v11, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 604
    .local v12, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 605
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 606
    .local v16, maxSize:I
    const/high16 v27, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 607
    .local v20, parentWidthSize:I
    move/from16 v19, v16

    .line 608
    .local v19, parentHeightSize:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 609
    .local v22, scaledWidthSize:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 610
    .local v21, scaledHeightSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 612
    if-eqz v25, :cond_2

    if-nez v11, :cond_3

    .line 613
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 618
    :cond_3
    if-lez v26, :cond_4

    if-gtz v12, :cond_5

    .line 619
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    goto/16 :goto_0

    .line 628
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 629
    .local v24, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 638
    .local v13, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 639
    .local v5, childCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 642
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 645
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 646
    const/high16 v9, -0x8000

    .line 652
    .local v9, childWidthMode:I
    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 653
    const/high16 v7, -0x8000

    .line 658
    .local v7, childHeightMode:I
    :goto_3
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 660
    .local v8, childWidthMeasureSpec:I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 663
    .local v6, childHeightMeasureSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 639
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 648
    .end local v6           #childHeightMeasureSpec:I
    .end local v7           #childHeightMode:I
    .end local v8           #childWidthMeasureSpec:I
    .end local v9           #childWidthMode:I
    :cond_6
    const/high16 v9, 0x4000

    .restart local v9       #childWidthMode:I
    goto :goto_2

    .line 655
    :cond_7
    const/high16 v7, 0x4000

    .restart local v7       #childHeightMode:I
    goto :goto_3

    .line 665
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childHeightMode:I
    .end local v9           #childWidthMode:I
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 675
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 677
    if-lez v5, :cond_a

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 687
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 688
    .local v17, offset:I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 690
    .local v23, spacing:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 694
    .end local v17           #offset:I
    .end local v23           #spacing:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 696
    if-lez v5, :cond_b

    .line 697
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 699
    :cond_b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 940
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 941
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 945
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 946
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 947
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 949
    :goto_1
    return v2

    .line 943
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0

    .line 949
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2103
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040347

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2109
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 2110
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2114
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2116
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_2

    .line 2117
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2123
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1616
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1295
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageBeginMoving()V

    .line 480
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageEndMoving()V

    .line 487
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v0, 0x1

    .line 2547
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2564
    :goto_0
    return v0

    .line 2550
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2564
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2552
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    goto :goto_0

    .line 2558
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2559
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2550
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1682
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1683
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1684
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1685
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1687
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 930
    .local v0, page:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 931
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 932
    const/4 v1, 0x1

    .line 934
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0
    .parameter "screenCenter"

    .prologue
    .line 747
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 517
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 518
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 522
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 524
    if-gez p1, :cond_2

    .line 525
    invoke-super {p0, v3, p2}, Landroid/view/View;->scrollTo(II)V

    .line 526
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 527
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    .line 539
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 540
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 543
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 545
    .local v0, p:[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 546
    aget v1, v0, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 549
    .end local v0           #p:[F
    :cond_1
    return-void

    .line 529
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 530
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 531
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 532
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    .line 535
    :cond_3
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 536
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :goto_0
    return-void

    .line 451
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicator()V

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 392
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 317
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 346
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 348
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 510
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 461
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 2483
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .parameter "pageSpacing"

    .prologue
    .line 704
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 706
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 384
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .parameter "scaleX"

    .prologue
    const/4 v3, 0x1

    .line 352
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 355
    .local v0, p:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 356
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 359
    .end local v0           #p:[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .parameter "immediately"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1941
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1942
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1947
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1948
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1950
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1951
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1953
    if-eqz p1, :cond_2

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1956
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1957
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1958
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1744
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1804
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1805
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1812
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 1826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1827
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1829
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 1830
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1831
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1832
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1834
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1837
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    .line 1838
    invoke-virtual {p0, p3}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 1839
    if-eqz p4, :cond_4

    .line 1840
    const/4 p3, 0x0

    .line 1845
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 1851
    if-eqz p4, :cond_3

    .line 1852
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScroll()V

    .line 1855
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1856
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1857
    return-void

    .line 1841
    :cond_4
    if-nez p3, :cond_1

    .line 1842
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .parameter "whichPage"
    .parameter "duration"
    .parameter "immediate"

    .prologue
    .line 1814
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1820
    .local v1, newX:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1821
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1822
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1823
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .parameter "whichPage"

    .prologue
    .line 1807
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1808
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 1767
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1773
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1774
    .local v5, newX:I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1775
    .local v0, delta:I
    const/4 v3, 0x0

    .line 1777
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 1780
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1801
    :goto_0
    return-void

    .line 1788
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1789
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1792
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1793
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1798
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1800
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2155
    .local v0, dragViewIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2156
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2157
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2158
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2161
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_1

    .line 2163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2165
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 2171
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 429
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 430
    .local v1, offset:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 431
    .local v2, relOffset:I
    sub-int v0, v1, v2

    .line 432
    .local v0, newX:I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 433
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 434
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 435
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 337
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 338
    .local v0, x:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 339
    .local v1, y:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 343
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .parameter "onCompleteRunnable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    .line 2215
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2216
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2218
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    .line 2219
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2220
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2221
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2258
    :cond_2
    :goto_0
    return v0

    .line 2254
    :cond_3
    if-eqz p1, :cond_2

    .line 2255
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected zoomOut()Z
    .locals 7

    .prologue
    const/high16 v3, 0x3f80

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2069
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2070
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2073
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 2074
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2075
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2076
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2079
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2096
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2099
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
